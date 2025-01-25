import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';

class StoreInfoBar extends StatelessWidget {
  const StoreInfoBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Row(
        children: [
          SvgPicture.asset('assets/icons/store_food_example.svg'),
          SizedBox(width: 15.w),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '힘쎈드위치 ',
                      style: AppTextStyle.body1Bold.copyWith(
                          letterSpacing: -0.32,
                          color: GlobalMainColor.globalPrimaryBlackColor),
                    ),
                    Text(
                      '포장·매장',
                      style: AppTextStyle.captionMedium.copyWith(
                          color: GlobalMainGrey.grey300, letterSpacing: -0.24),
                    ),
                  ],
                ),
                SizedBox(height: 7.h),
                Text(
                  '광주 동구 필문대로273번길 4',
                  style: AppTextStyle.captionMedium.copyWith(
                    color: GlobalMainGrey.grey300,
                    letterSpacing: -0.24,
                  ),
                ),
                SizedBox(height: 7.h),
                Text(
                  '최대 20% 할인중',
                  style: AppTextStyle.captionBold.copyWith(
                    color: GlobalMainColor.globalPrimaryRedColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
