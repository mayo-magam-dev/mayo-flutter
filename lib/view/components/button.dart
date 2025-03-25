import 'package:flutter/material.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';

class Button extends StatelessWidget {
  final String text;
  final void Function()? onTap;

  const Button({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 46,
        decoration: ShapeDecoration(
          color: onTap != null
              ? GlobalMainYellow.yellow200
              : GlobalMainGrey.grey200,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: AppTextStyle.subheadingBold.copyWith(
              color: onTap != null
                  ? GlobalMainColor.globalPrimaryBlackColor
                  : GlobalMainGrey.grey300,
            ),
          ),
        ),
      ),
    );
  }
}
