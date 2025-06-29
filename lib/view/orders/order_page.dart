import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/dataSource/reservation.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/reservation/read_reservation_detail_response.dart';
import 'package:mayo_flutter/model/reservation/read_reservation_response.dart';
import 'package:mayo_flutter/util/formater.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

// 예약 상태에 따른 색상 및 텍스트 상수
class ReservationState {
  static const int waiting = 0;
  static const int inProgress = 1;
  static const int completed = 2;
  static const int failed = 3;

  static const Map<int, Map<String, dynamic>> stateDetails = {
    waiting: {'color': Colors.yellow, 'text': '대기'},
    inProgress: {'color': Colors.blue, 'text': '진행'},
    completed: {'color': Colors.green, 'text': '완료'},
    failed: {'color': Colors.red, 'text': '실패'},
  };
}

class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<ReadReservationResponse>? reservationData;

  @override
  void initState() {
    super.initState();
    fetchReservationData();
  }

  Future<void> fetchReservationData() async {
    final getReservationData = await ReservationDataSource().getReservations();
    setState(() {
      reservationData = getReservationData;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Topbar(title: '주문내역', showCarts: true),
            SizedBox(height: 25.h),
            Padding(
              padding: EdgeInsets.only(left: 24.w),
              child: Text(
                "최근 나의 주문 내역이에요.",
                style: AppTextStyle.heading2Bold,
              ),
            ),
            SizedBox(height: 20.h),
            if (reservationData == null)
              Expanded(child: Center(child: CircularProgressIndicator()))
            else if (reservationData!.isEmpty)
              Expanded(
                child: Center(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Image.asset(
                        'assets/images/empty_cart.png', // 실제 경로에 맞게 수정
                        width: 120,
                      ),
                      SizedBox(height: 24),
                      Text(
                        '주문 내역이 없어요!',
                        style: AppTextStyle.heading3Bold,
                      ),
                      SizedBox(height: 8),
                      Text(
                        '원하는 메뉴나 상품을 찾아볼까요?',
                        style: AppTextStyle.body1Medium.copyWith(color: Colors.black),
                      ),
                      SizedBox(height: 32),
                      SizedBox(
                        width: 153,
                        height: 34,
                        child: ElevatedButton(
                          onPressed: () => context.push('/onsale'),
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24),
                            ),
                            backgroundColor: Colors.white,
                            side: BorderSide(color: Colors.black),
                            elevation: 0,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text('가게 둘러보기', style: TextStyle(color: Colors.black)),
                              SizedBox(width: 10),
                              Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            else
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  children: reservationData!
                      .map((data) => _OrderItem(reservationData: data))
                      .toList(),
                ),
              ),
          ],
        ),
      ),
    );
  }
}

class _OrderItem extends StatefulWidget {
  const _OrderItem({required this.reservationData});

  final ReadReservationResponse reservationData;

  @override
  State<_OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<_OrderItem> {
  ReadReservationResponse? reservationData;
  ReadReservationDetailResponse? reservationDetailData;

  @override
  void initState() {
    super.initState();
    reservationData = widget.reservationData;
    fetchStoreData();
  }

  Future<void> fetchStoreData() async {
    final getReservationDetail = await ReservationDataSource()
        .getReservationDetail(reservationData!.reservationId);
    setState(() {
      reservationDetailData = getReservationDetail;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (reservationDetailData == null) {
      return Center(child: CircularProgressIndicator());
    }

    final reservationStateDetails =
        ReservationState.stateDetails[reservationData!.reservationState]!;
    final containerColor = reservationStateDetails['color'];
    final reservationStateText = reservationStateDetails['text'];

    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        border: Border.all(color: GlobalMainGrey.grey200),
      ),
      padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              _StoreImage(imageUrl: reservationData!.storeImage),
              SizedBox(width: 8.w),
              _OrderDetails(
                reservationData: reservationData!,
                reservationDetailData: reservationDetailData!,
              ),
            ],
          ),
          SizedBox(height: 8.h),
          _ReservationFooter(
            createdAt: reservationData!.createdAt,
            stateText: reservationStateText,
            containerColor: containerColor,
            reservationState: reservationData!.reservationState,
          ),
        ],
      ),
    );
  }
}

class _StoreImage extends StatelessWidget {
  final String imageUrl;

  const _StoreImage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 78.w,
      height: 78.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.r),
        image: DecorationImage(
          image: NetworkImage(imageUrl),
        ),
      ),
      clipBehavior: Clip.antiAlias,
    );
  }
}

class _OrderDetails extends StatelessWidget {
  final ReadReservationResponse reservationData;
  final ReadReservationDetailResponse reservationDetailData;

  const _OrderDetails({
    required this.reservationData,
    required this.reservationDetailData,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GestureDetector(
          onTap: () {
            context.push(
                '/order/${reservationData.reservationId}/${reservationDetailData.cartList.first.storeId}/${reservationData.reservationState}');
          },
          child: Row(
            children: [
              Text(reservationData.storeName, style: AppTextStyle.body1Bold),
              SvgPicture.asset(
                "assets/icons/right_arrow.svg",
                width: 16.w,
                height: 16.h,
              ),
            ],
          ),
        ),
        SizedBox(height: 4.h),
        Text(
          "${reservationData.firstItem.itemName} (${reservationData.firstItem.itemQuantity})개 ${reservationDetailData.cartList.length == 1 ? '' : '외 ${reservationDetailData.cartList.length - 1}개'}",
          style: AppTextStyle.body2Medium,
        ),
        SizedBox(height: 5.h),
        Text(
          "${Formater.moneyFormat(reservationData.totalPrice.toInt())}원",
          style: AppTextStyle.body2Bold,
        ),
      ],
    );
  }
}

class _ReservationFooter extends StatelessWidget {
  final DateTime createdAt;
  final String stateText;
  final Color containerColor;
  final int reservationState;

  const _ReservationFooter({
    required this.createdAt,
    required this.stateText,
    required this.containerColor,
    required this.reservationState,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "${createdAt.year}/${createdAt.month}/${createdAt.day}",
          style:
              AppTextStyle.body2Medium.copyWith(color: GlobalMainGrey.grey500),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 4.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.r),
            color: containerColor,
          ),
          child: Text(
            stateText,
            style: AppTextStyle.captionMedium,
          ),
        ),
      ],
    );
  }
}
