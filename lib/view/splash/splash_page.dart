import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
part 'splash_scaffold.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      logo: SvgPicture.asset('assets/icons/mayo_logo_208x74.svg'),
      introText: Text(
        '환경을 살리는 합리적 소비, 마감할인 플랫폼',
        style: TextStyle(
          color: GlobalMainColor.globalMainColor,
          fontSize: 16.sp,
          fontWeight: FontWeight.w700,
          height: 2.12.h,
          letterSpacing: -0.32,
        ),
      ),
    );
  }
}
