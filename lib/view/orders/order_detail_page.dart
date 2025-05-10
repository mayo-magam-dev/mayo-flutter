import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:mayo_flutter/dataSource/map.dart';
import 'package:mayo_flutter/dataSource/reservation.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/cart/read_cart_response.dart';
import 'package:mayo_flutter/model/reservation/read_reservation_detail_response.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/util/formater.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

class OrderDetailPage extends StatefulWidget {
  const OrderDetailPage({
    super.key,
    required this.reservationId,
    required this.storeId,
    required this.reservationState,
  });

  final String reservationId;
  final String storeId;
  final String reservationState;

  @override
  State<OrderDetailPage> createState() => _OrderDetailPageState();
}

class _OrderDetailPageState extends State<OrderDetailPage> {
  late KakaoMapController mapController;
  Set<Marker> markers = {};

  ReadReservationDetailResponse? reservationDeatilData;
  ReadStore? storeDeatilData;

  featchReservationDeatilData() async {
    final ReadReservationDetailResponse getReservationDetail =
        await ReservationDataSource()
            .getReservationDetail(widget.reservationId);
    final ReadStore getStore =
        await StoreDataSource().getStoreDetail(widget.storeId);
    setState(() {
      reservationDeatilData = getReservationDetail;
      storeDeatilData = getStore;
    });
  }

  @override
  void initState() {
    super.initState();
    featchReservationDeatilData();
  }

  String getStatusText(String state) {
    switch (state) {
      case '0':
        return '예약 대기 중입니다!';
      case '1':
        return '주문이 진행 중입니다!';
      case '2':
        return '완료된 주문입니다!';
      case '3':
        return '주문이 실패했습니다!';
      default:
        return '알 수 없는 상태입니다';
    }
  }

  Color getStatusColor(String state) {
    switch (state) {
      case '0':
        return Colors.orange;
      case '1':
        return Colors.blue;
      case '2':
        return Colors.green;
      case '3':
        return Colors.red;
      default:
        return Colors.grey;
    }
  }

  @override
  Widget build(BuildContext context) {
    if (reservationDeatilData == null) {
      return SizedBox();
    }
    List<String> createdAt =
        reservationDeatilData!.createdAt.toString().split(RegExp(r'[ :-]'));
    List<String> pickupTime =
        reservationDeatilData!.pickupTime.toString().split(RegExp(r'[ :-]'));
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Topbar(title: "전체", showCarts: true),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 17.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(getStatusText(widget.reservationState),
                      style: AppTextStyle.heading3Bold.copyWith(
                        color: getStatusColor(widget.reservationState),
                      )),
                  SizedBox(height: 11.h),
                  Text(reservationDeatilData!.storeName,
                      style: AppTextStyle.heading2Bold),
                  SizedBox(height: 22.h),
                  Text(
                      "예약일시 : ${createdAt[0].substring(2, 4)}/${createdAt[1]}/${createdAt[2]} ${createdAt[3]}:${createdAt[4]}",
                      style: AppTextStyle.body2Medium),
                  SizedBox(height: 9.h),
                  Text(
                      "예약번호 : ${createdAt[0]}${createdAt[1]}${createdAt[2]}${createdAt[3]}${createdAt[4]}",
                      style: AppTextStyle.body2Medium),
                  SizedBox(height: 9.h),
                  Text(
                      "픽업 예정 시간 : ${pickupTime[0].substring(2, 4)}/${pickupTime[1]}/${pickupTime[2]} ${pickupTime[3]}:${pickupTime[4]}",
                      style: AppTextStyle.body2Medium),
                  SizedBox(height: 36.h),
                  Text("예약 내역", style: AppTextStyle.body1Bold),
                  SizedBox(height: 9.h),
                  Column(
                    children: List.generate(
                      reservationDeatilData!.cartList.length,
                      (index) {
                        ReadCartResponse cartList =
                            reservationDeatilData!.cartList[index];
                        return Padding(
                          padding: EdgeInsets.only(bottom: 9.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "${cartList.itemName} x ${cartList.cartItemCount}",
                                style: AppTextStyle.body2Medium,
                              ),
                              Text(
                                Formater.moneyFormat(cartList.subtotal.toInt()),
                                style: AppTextStyle.body2Medium,
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
            Divider(
              height: 1,
              thickness: 1,
              color: GlobalMainGrey.grey200,
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 14.5.h, horizontal: 24.w),
              child: Text(
                  "총 ${Formater.moneyFormat(reservationDeatilData!.totalPrice.toInt())}원",
                  style: AppTextStyle.heading3Bold),
            ),
            Divider(
              height: 14.5.h,
              thickness: 20,
              color: GlobalMainGrey.grey100,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 17.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("가게 위치", style: AppTextStyle.heading3Bold),
                  SizedBox(
                    height: 9.h,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  Container(
                    width: 342.w,
                    height: 225.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: _KakaoMap(storeData: storeDeatilData!),
                  ),
                  SizedBox(height: 12.h),
                  Row(
                    children: [
                      Icon(Icons.location_on, size: 16.sp),
                      SizedBox(width: 5.w),
                      Text(storeDeatilData!.address,
                          style: AppTextStyle.body2Medium),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}

class _KakaoMap extends StatefulWidget {
  const _KakaoMap({required this.storeData});

  final ReadStore storeData;

  @override
  State<_KakaoMap> createState() => _KakaoMapState();
}

class _KakaoMapState extends State<_KakaoMap> {
  late KakaoMapController mapController;
  Set<Marker> markers = {};
  late Future<void> _geocodeFuture;
  bool isMapReady = false;

  @override
  void initState() {
    super.initState();
    _geocodeFuture = _loadGeocode();
  }

  Future<void> _loadGeocode() async {
    final value = await MapDataSource().getGeocode(widget.storeData.address);
    final marker = Marker(
      markerId: UniqueKey().toString(),
      latLng: LatLng(
        double.parse(value.documents[0].y),
        double.parse(value.documents[0].x),
      ),
    );

    markers.add(marker);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _geocodeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }

        return KakaoMap(
          onMapCreated: (controller) {
            mapController = controller;
            if (!isMapReady) {
              setState(() {
                isMapReady = true;
              });
            }
          },
          markers: markers.toList(),
          center: markers.first.latLng,
        );
      },
    );
  }
}
