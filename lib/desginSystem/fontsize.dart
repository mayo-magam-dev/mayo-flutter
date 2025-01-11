import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

abstract class AppTextStyle {
  static TextStyle pretendardStyle(double size, double? height) => TextStyle(
        fontFamily: 'Pretendard',
        fontSize: size,
        height: height,
      );

  static TextStyle pretendardBoldStyle(double size, double? height) =>
      pretendardStyle(size, height).copyWith(
        fontWeight: FontWeight.w600,
      );

  static TextStyle pretendardMediumStyle(double size, double? height) =>
      pretendardStyle(size, height).copyWith(
        fontWeight: FontWeight.w500,
      );

  static final TextStyle heading2Bold = pretendardBoldStyle(24.sp, 1.5.h);
  static final TextStyle heading2Medium = pretendardMediumStyle(24.sp, 1.5.h);
  static final TextStyle heading3Bold = pretendardBoldStyle(21.sp, 1.5.h);
  static final TextStyle heading3Medium = pretendardMediumStyle(21.sp, 1.5.h);
  static final TextStyle subheadingBold = pretendardBoldStyle(18.sp, 1.3.h);
  static final TextStyle subheadingMedium = pretendardMediumStyle(18.sp, 1.3.h);
  static final TextStyle body1Bold = pretendardBoldStyle(16.sp, 1.3.h);
  static final TextStyle body1Medium = pretendardMediumStyle(16.sp, 1.3.h);
  static final TextStyle body2Bold = pretendardBoldStyle(14.sp, 1.2.h);
  static final TextStyle body2Medium = pretendardMediumStyle(14.sp, 1.2.h);
  static final TextStyle captionBold = pretendardBoldStyle(12.sp, 1.2.h);
  static final TextStyle captionMedium = pretendardMediumStyle(12.sp, 1.2.h);
}
