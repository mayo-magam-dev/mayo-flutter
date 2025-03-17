import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
class OneProductWidget extends StatelessWidget {
  const OneProductWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: EdgeInsets.symmetric(vertical: 21.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Image.asset(
            "assets/images/empty_cart.png",
            width: 342.w,
            height: 123.h,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "힘쎈드위치",
                  style: AppTextStyle.body1Bold,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    SvgPicture.asset("assets/icons/location.svg"),
                    SizedBox(
                      width: 3.w,
                    ),
                    Text("광주광역시 동구 필문대로273번길 4",
                        style: AppTextStyle.body2Medium),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                Row(children: [
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 7.5.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: GlobalMainColor.globalButtonColor,
                      ),
                      child: Text("포장", style: AppTextStyle.captionMedium)),
                  SizedBox(
                    width: 5.w,
                  ),
                  Container(
                      padding: EdgeInsets.symmetric(horizontal: 7.5.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                            color: GlobalMainColor.globalButtonColor),
                      ),
                      child: Text("매장", style: AppTextStyle.captionMedium)),
                ]),
              ],
            ),
            Container(
                width: 67.w,
                height: 67.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: GlobalMainColor.globalButtonColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/icons/time.svg",
                      colorFilter:
                          ColorFilter.mode(Colors.white, BlendMode.srcIn),
                      width: 33.w,
                      height: 33.h,
                    ),
                    Text(
                      "예약하기",
                      style: AppTextStyle.captionMedium
                          .copyWith(color: Colors.white),
                    ),
                  ],
                )),
          ],
        )
      ],
    );
  }
}
