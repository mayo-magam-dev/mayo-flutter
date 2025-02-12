part of 'order_page.dart';

class _OrderContent extends StatelessWidget {
  const _OrderContent();

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "최근 나의 주문 내역이에요.",
              style: AppTextStyle.heading2Bold,
            ),
            SizedBox(height: 23.h),
            _OrderItem()
          ],
        ));
  }
}

class _OrderItem extends StatelessWidget {
  const _OrderItem();

  @override
  Widget build(BuildContext context) {
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
                    Row(
                      children: [
                        Text("떡군이네떡볶이", style: AppTextStyle.body1Bold),
                        SvgPicture.asset(
                          "assets/icons/right_arrow.svg",
                          width: 16.w,
                          height: 16.h,
                        )
                      ],
                    ),
                    SizedBox(height: 4.h),
                    Text("떡볶이 외 2개", style: AppTextStyle.body2Medium),
                    SizedBox(height: 5.h),
                    Text("12,500원", style: AppTextStyle.body2Bold),
                  ],
                ),
              ],
            ),
            SizedBox(height: 8.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "2024/04/02",
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
        ));
  }
}
