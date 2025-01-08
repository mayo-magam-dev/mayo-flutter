import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold(
      {required this.logo, required this.form, required this.socialLogin});
  final Widget logo;
  final Widget form;
  final Widget socialLogin;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 70.w, horizontal: 24.h),
        child: Column(
          children: [
            logo,
            SizedBox(height: 70.h),
            form,
            SizedBox(height: 54.h),
            socialLogin,
          ],
        ),
      ),
    ));
  }
}
