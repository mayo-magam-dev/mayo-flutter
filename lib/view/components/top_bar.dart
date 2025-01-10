import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset("assets/icons/arrow.svg"),
            Text(
              "가게 정보",
              style: AppTextStyle.body1Medium,
            ),
            SvgPicture.asset("assets/icons/cart.svg"),
          ],
        ));
  }
}
