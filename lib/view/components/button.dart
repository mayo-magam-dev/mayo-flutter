import 'package:flutter/material.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';

class Button extends StatelessWidget {
  const Button({
    super.key,
    required this.text,
    required this.onTap,
    this.submit = false,
  });
  final String text;
  final VoidCallback onTap;
  final bool submit;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 24),
        width: double.infinity,
        height: 46,
        decoration: ShapeDecoration(
          color: GlobalMainGrey.grey200,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        child: InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(10),
          child: Center(
            child: Text(
              text,
              style: AppTextStyle.body1Bold.copyWith(
                color: Colors.white,
                letterSpacing: -0.32,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
