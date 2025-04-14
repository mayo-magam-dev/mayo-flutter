part of 'order_page.dart';

class _OrderContent extends StatefulWidget {
  const _OrderContent();

  @override
  State<_OrderContent> createState() => _OrderContentState();
}

class _OrderContentState extends State<_OrderContent> {
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
    if (reservationData == null) {
      return SizedBox();
    }
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "최근 나의 주문 내역이에요.",
            style: AppTextStyle.heading2Bold,
          ),
          SizedBox(height: 23.h),
          _OrderItem(reservationData![0])
        ],
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
    if (reservationDetailData == null) {
      return SizedBox();
    } else if (reservationDetailData != null) {
      return Container(
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
                  ),
                  clipBehavior: Clip.antiAlias,
                  child: Image.asset(
                    fit: BoxFit.fill,
                    "assets/images/store_product_info_example.png",
                  ),
                ),
                SizedBox(height: 12.h),
                SizedBox(width: 8.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        // context.push(
                        //     '/order/${reservationData!.reservationId}/${reservationDetailData!.cartList.first.storeId}');
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //     builder: (context) => const OrderDetailPage(),
                        //   ),
                        // );
                        context.push('/order-detail');
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
                        "${reservationData!.firstItem.itemName} (${reservationData!.firstItem.itemQuantity})개 외 @개",
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
                    color: GlobalMainColor.globalMainColor,
                  ),
                  child: Text("완료", style: AppTextStyle.captionMedium),
                )
              ],
            )
          ],
        ),
      );
    }
    return CircularProgressIndicator();
  }
}
