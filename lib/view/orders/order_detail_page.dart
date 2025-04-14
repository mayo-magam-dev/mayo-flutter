import 'package:flutter/material.dart';
// import 'package:flutter/rendering.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:kakao_map_plugin/kakao_map_plugin.dart';
// import 'package:mayo_flutter/dataSource/reservation.dart';
// import 'package:mayo_flutter/dataSource/store.dart';
// import 'package:mayo_flutter/designSystem/color.dart';
// import 'package:mayo_flutter/designSystem/fontsize.dart';
// import 'package:mayo_flutter/model/reservation/read_reservation_detail_response.dart';
// import 'package:mayo_flutter/model/store/read_store.dart';
// import 'package:mayo_flutter/util/formater.dart';
// import 'package:mayo_flutter/view/components/top_bar.dart';

class OrderDetailPage extends StatelessWidget {
  const OrderDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Text('data'));
  }
}

// class OrderDetailPage extends StatefulWidget {
//   const OrderDetailPage({
//     super.key,
//     required this.reservationId,
//     required this.storeId,
//   });

//   final String reservationId;

//   final String storeId;

//   @override
//   State<OrderDetailPage> createState() => _OrderDetailPageState();
// }

// class _OrderDetailPageState extends State<OrderDetailPage> {
//   late KakaoMapController mapController;
//   Set<Marker> markers = {};

//   ReadReservationDetailResponse? reservationDeatilData;
//   String? address;

//   featchReservationDeatilData() async {
//     final ReadReservationDetailResponse getReservationDetail =
//         await ReservationDataSource()
//             .getReservationDetail(widget.reservationId);
//     final ReadStore getStore =
//         await StoreDataSource().getStoreDetail(widget.storeId);
//     setState(() {
//       reservationDeatilData = getReservationDetail;
//       address = getStore.address;
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     featchReservationDeatilData();
//   }

//   @override
//   Widget build(BuildContext context) {
//     if (reservationDeatilData == null) {
//       return SizedBox();
//     }
//     return Scaffold(
//       body: SafeArea(
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.end,
//           children: [
//             Topbar(title: "전체", showCarts: true),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 17.h),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("완료된 주문입니다!",
//                       style: AppTextStyle.heading3Bold
//                           .copyWith(color: GlobalMainColor.globalMainColor)),
//                   SizedBox(height: 11.h),
//                   Text(reservationDeatilData!.storeName,
//                       style: AppTextStyle.heading2Bold),
//                   SizedBox(
//                     height: 22.h,
//                   ),
//                   Text("예약일시 : ${reservationDeatilData!.createdAt}",
//                       style: AppTextStyle.body2Medium),
//                   SizedBox(
//                     height: 9.h,
//                   ),
//                   Text("예약번호 : 2401241433", style: AppTextStyle.body2Medium),
//                   SizedBox(
//                     height: 9.h,
//                   ),
//                   Text("픽업 예정 시간 : ${reservationDeatilData!.pickupTime}",
//                       style: AppTextStyle.body2Medium),
//                   SizedBox(
//                     height: 36.h,
//                   ),
//                   Text("예약 내역", style: AppTextStyle.body1Bold),
//                   SizedBox(
//                     height: 9,
//                   ),
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("반반 쎈드위치 x 2", style: AppTextStyle.body2Medium),
//                         Text("18,000", style: AppTextStyle.body2Medium),
//                       ]),
//                   SizedBox(
//                     height: 9,
//                   ),
//                   Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text("반반 쎈드위치 x 1", style: AppTextStyle.body2Medium),
//                         Text("9,000", style: AppTextStyle.body2Medium),
//                       ]),
//                 ],
//               ),
//             ),
//             Divider(
//               height: 1,
//               thickness: 1,
//               color: GlobalMainGrey.grey200,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(vertical: 14.5.h, horizontal: 24.w),
//               child: Text(
//                   "총 ${Formater.moneyFormat(reservationDeatilData!.totalPrice.toInt())}원",
//                   style: AppTextStyle.heading3Bold),
//             ),
//             Divider(
//               height: 14.5.h,
//               thickness: 20,
//               color: GlobalMainGrey.grey100,
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 17.h),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text("가게 위치", style: AppTextStyle.heading3Bold),
//                   SizedBox(
//                     height: 9.h,
//                   ),
//                   Container(
//                       decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(10),
//                   )),
//                   Container(
//                     width: 342.w,
//                     height: 225.h,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                     ),
//                     child: KakaoMap(
//                       onMapCreated: ((controller) async {
//                         mapController = controller;
//                         markers.add(Marker(
//                           markerId: UniqueKey().toString(),
//                           latLng: await mapController.getCenter(),
//                         ));
//                         setState(() {});
//                       }),
//                       markers: markers.toList(),
//                       center: LatLng(37.3608681, 126.9306506),
//                     ),
//                   ),
//                   SizedBox(height: 12.h),
//                   Row(
//                     children: [
//                       Icon(Icons.location_on, size: 16.sp),
//                       SizedBox(width: 5.w),
//                       Text("$address", style: AppTextStyle.body2Medium),
//                     ],
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
