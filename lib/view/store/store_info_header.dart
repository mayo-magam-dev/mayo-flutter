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
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SelectableMenu(
                      menuName: "가게 정보",
                      menuIcon: "calendar.svg",
                      onTap: () {},
                    ),
                    SelectableMenu(
                      menuName: "가게 위치",
                      menuIcon: "location-with-ground.svg",
                      onTap: () {},
                    ),
                    SelectableMenu(
                      menuName: "전화 문의",
                      menuIcon: "call.svg",
                      onTap: () {},
                    ),
                    SelectableMenu(
                      menuName: "원산지 정보",
                      menuIcon: "info.svg",
                      onTap: () {},
                    ),
                  ],
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: Container(
            height: 1.h,
            color: GlobalMainGrey.grey200,
          ),
        )
      ],
    );
  }
}

class SelectableMenu extends StatelessWidget {
  const SelectableMenu(
      {super.key,
      required this.menuName,
      required this.menuIcon,
      required this.onTap});
  final String menuName;
  final String menuIcon;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: Column(
          children: [
            SvgPicture.asset(
              "assets/icons/$menuIcon",
            ),
            SizedBox(
              height: 11.h,
            ),
            Text(menuName, style: AppTextStyle.body2Medium)
          ],
        ));
  }
}
