import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';

class FavoriteStoreList extends StatefulWidget {
  const FavoriteStoreList({
    super.key,
  });

  @override
  State<FavoriteStoreList> createState() => _FavoriteStoreListState();
}

class _FavoriteStoreListState extends State<FavoriteStoreList> {
  bool isLike = false;
  bool isAlert = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 110,
      alignment: Alignment.center,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/example_store_logo.png'),
          SizedBox(width: 10.3.w),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '몽실이네 빵집',
                style: AppTextStyle.body1Bold.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.32,
                ),
              ),
              SizedBox(height: 11.h),
              Text(
                '마감할인 : 19:00 ~ 21:00',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
          SizedBox(width: 40.w),
          GestureDetector(
            onTap: () {
              setState(() {
                isLike = !isLike;
              });
            },
            child: isLike
                ? SvgPicture.asset('assets/icons/selected_like_function.svg')
                : SvgPicture.asset('assets/icons/like_function.svg'),
          ),
          SizedBox(width: 8.3.w),
          GestureDetector(
            onTap: () {
              setState(() {
                isAlert = !isAlert;
              });
            },
            child: isAlert
                ? SvgPicture.asset('assets/icons/selected_alert_function.svg')
                : SvgPicture.asset('assets/icons/alert_function.svg'),
          ),
        ],
      ),
    );
  }
}
