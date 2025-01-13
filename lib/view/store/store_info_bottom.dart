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
                Image.asset("assets/images/store_info_logo_example.png"),
                SizedBox(
                  width: 22.w,
                ),
                Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [])
              ],
            )
          ],
        ));
  }
}
