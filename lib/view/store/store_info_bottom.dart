part of 'store_page.dart';

class _StoreInfoBottom extends StatelessWidget {
  // ignore: unused_element
  const _StoreInfoBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("마감 할인 정보", style: AppTextStyle.body1Bold),
                Text(
                  "19:00 ~ 21:00",
                  style: AppTextStyle.body1Bold
                      .copyWith(color: GlobalMainColor.globalButtonColor),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                Image.asset("assets/images/store_product_example.png"),
                SizedBox(
                  width: 22.w,
                ),
                SizedBox(
                  width: 232.w,
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("반반 샌드위치", style: AppTextStyle.body1Bold),
                        SizedBox(
                          height: 7.h,
                        ),
                        Text(
                          "메뉴를 설명하는 칸입니다. AppTextStyle.body2Bold 아아아아아아아아아아아아아아아",
                          style: AppTextStyle.captionMedium,
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
                        ),
                        SizedBox(
                          height: 4.h,
                        ),
                        Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text("25%",
                                  style: AppTextStyle.body2Bold
                                      .copyWith(color: Colors.red)),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "18,000원",
                                style: AppTextStyle.body2Bold,
                              ),
                              SizedBox(
                                width: 5.w,
                              ),
                              Text(
                                "24,000",
                                style: AppTextStyle.captionMedium
                                    .copyWith(color: Colors.grey),
                              )
                            ]),
                        SizedBox(
                          height: 4.h,
                        ),
                        Text(
                          "4개 남음",
                          style: AppTextStyle.captionMedium
                              .copyWith(color: GlobalMainGrey.grey400),
                        )
                      ]),
                )
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 16.5.h),
                height: 1.h,
                color: GlobalMainGrey.grey200),
          ],
        ));
  }
}
