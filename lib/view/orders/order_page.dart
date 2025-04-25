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


class OrderPage extends StatefulWidget {
  const OrderPage({super.key});

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<ReadReservationResponse>? reservationData;

  featchReservationData() async {
    final getReservationData = await ReservationDataSource().getReservations();
    setState(() {
      reservationData = getReservationData;
    });
  }

  @override
  void initState() {
    super.initState();
    featchReservationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
              SizedBox(height: 23.h),
              if (reservationData == null)
                SizedBox()
              else
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: Column(
                    children: List.generate(
                      reservationData!.length,
                      (index) {
                        return _OrderItem(reservationData![index]);
                      },
                    ),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class _OrderItem extends StatefulWidget {
  const _OrderItem(
    this.reservationData,
  );

  final ReadReservationResponse reservationData;

  @override
  State<_OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<_OrderItem> {
  ReadReservationResponse? reservationData;
  ReadReservationDetailResponse? reservationDetailData;

  Color? containerColor;
  String? reservationStateText;

  featchStoreData() async {
    final ReadReservationDetailResponse getReservationDetail =
        await ReservationDataSource()
            .getReservationDetail(reservationData!.reservationId);
    setState(() {
      reservationDetailData = getReservationDetail;
    });
  }

  @override
  void initState() {
    super.initState();
    reservationData = widget.reservationData;
    featchStoreData();
  }

  @override
  Widget build(BuildContext context) {
    if (reservationData!.reservationState == 0 & 1) {
      return SizedBox.shrink();
    } else {
      if (reservationDetailData == null) {
        return SizedBox();
      } else if (reservationDetailData != null) {
        switch (reservationData!.reservationState) {
          case 2:
            containerColor = GlobalMainColor.globalMainColor;
            reservationStateText = '완료';
            break;
          case 3:
            containerColor = Color(0xFFFF888A);
            reservationStateText = '실패';
            break;
        }
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
                  Container(
                    width: 78.w,
                    height: 78.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.r),
                      image: DecorationImage(
                        image: NetworkImage(reservationData!.storeImage),
                      ),
                    ),
                    clipBehavior: Clip.antiAlias,
                  ),
                  SizedBox(height: 12.h),
                  SizedBox(width: 8.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          context.push(
                              '/order/${reservationData!.reservationId}/${reservationDetailData!.cartList.first.storeId}/${reservationData!.reservationState.toString()}');
                        },
                        child: Row(
                          children: [
                            Text(reservationData!.storeName,
                                style: AppTextStyle.body1Bold),
                            SvgPicture.asset(
                              "assets/icons/right_arrow.svg",
                              width: 16.w,
                              height: 16.h,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 4.h),
                      Text(
                          "${reservationData!.firstItem.itemName} (${reservationData!.firstItem.itemQuantity})개 ${reservationDetailData!.cartList.length == 1 ? '' : '외 ${reservationDetailData!.cartList.length - 1}개'}",
                          style: AppTextStyle.body2Medium),
                      SizedBox(height: 5.h),
                      Text(
                          "${Formater.moneyFormat(reservationData!.totalPrice.toInt())}원",
                          style: AppTextStyle.body2Bold),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 8.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "${reservationData!.createdAt.year}/${reservationData!.createdAt.month}/${reservationData!.createdAt.day}",
                    style: AppTextStyle.body2Medium
                        .copyWith(color: GlobalMainGrey.grey500),
                  ),
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 13.w, vertical: 4.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.r),
                      color: containerColor,
                    ),
                    child: Text(
                      '$reservationStateText',
                      style: AppTextStyle.captionMedium,
                    ),
                  )
                ],
              ),
            ],
          ),
        );
      }
      return CircularProgressIndicator();
    }
  }
}
