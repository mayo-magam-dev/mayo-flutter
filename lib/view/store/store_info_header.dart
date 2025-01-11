part of 'store_page.dart';

class _StoreInfoHeader extends StatelessWidget {
  // ignore: unused_element
  const _StoreInfoHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.bottomLeft,
          clipBehavior: Clip.none,
          children: [
            Image.asset(
              "assets/images/store_info_header_example.png",
              width: 390.w,
              height: 235.h,
              fit: BoxFit.cover,
            ),
            Positioned(
                bottom: -25.h,
                child: Container(
                  width: 390.w,
                  height: 50.h,
                  padding: EdgeInsets.only(top: 9.h),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.w),
                          topRight: Radius.circular(15.w)),
                      color: Colors.white),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        "assets/icons/heart-border.svg",
                        width: 24.w,
                        height: 24.h,
                      ),
                      SizedBox(
                        width: 20.w,
                      ),
                      SvgPicture.asset(
                        "assets/icons/alert-border.svg",
                        width: 24.w,
                        height: 24.h,
                      ),
                      SizedBox(
                        width: 25.w,
                      )
                    ],
                  ),
                )),
            Positioned(
                left: 25.w,
                bottom: -25.h,
                child: Container(
                  width: 100.w,
                  height: 100.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25.w),
                      image: DecorationImage(
                          image: AssetImage(
                              "assets/images/store_info_logo_example.png"))),
                ))
          ],
        ),
        SizedBox(
          height: 40.h,
        ),
        Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "힘쎈드위치",
                  style: AppTextStyle.heading2Bold,
                ),
                Row(
                  children: [
                    SvgPicture.asset(
                      "assets/icons/location.svg",
                      width: 16.w,
                      height: 16.h,
                    ),
                    SizedBox(
                      width: 6.w,
                    ),
                    Text(
                      "광주광역시 동구 지산로 38",
                      style: AppTextStyle.body2Medium
                          .copyWith(color: GlobalMainGrey.grey700),
                    )
                  ],
                )
              ],
            ))
      ],
    );
  }
}
