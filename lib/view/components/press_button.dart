import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';

class PressButton extends StatelessWidget {
  const PressButton({super.key, required this.text, required this.onPressed});
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 342.w,
        height: 48.h,
        decoration: BoxDecoration(
          color: GlobalMainColor.globalButtonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Text(text,
            style: AppTextStyle.body1Bold.copyWith(color: Colors.white)),
      ),
    );
  }
}
