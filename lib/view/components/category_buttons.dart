import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';

class CategoryButton extends StatelessWidget {
  const CategoryButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {
            context.push('/onsale');
          },
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/category_logo.svg'),
              SizedBox(height: 8.h),
              Text(
                '전체',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            context.push('/meal');
          },
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/category_cooking.svg'),
              SizedBox(height: 8.h),
              Text(
                '든든한 식사',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.28,
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            context.push('/dessert');
          },
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/category_cake.svg'),
              SizedBox(height: 8.h),
              Text(
                '가벼운 간식',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.28,
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {
            context.push('/partner-store');
          },
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/category_dish.svg'),
              SizedBox(height: 8.h),
              Text(
                '제휴업체',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
