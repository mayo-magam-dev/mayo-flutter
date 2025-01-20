import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CategoryButtons extends StatelessWidget {
  const CategoryButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/category_logo.svg'),
              SizedBox(height: 8.h),
              Text(
                '전체',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/category_cooking.svg'),
              SizedBox(height: 8.h),
              Text(
                '든든한 식사',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.28,
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/category_cake.svg'),
              SizedBox(height: 8.h),
              Text(
                '가벼운 간식',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.28,
                ),
              )
            ],
          ),
        ),
        GestureDetector(
          onTap: () {},
          child: Column(
            children: [
              SvgPicture.asset('assets/icons/category_dish.svg'),
              SizedBox(height: 8.h),
              Text(
                '제휴업체',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
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
