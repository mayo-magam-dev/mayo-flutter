import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';

class Topbar extends StatelessWidget {
  const Topbar({super.key, required this.title, required this.showCarts});
  final String title;
  final bool showCarts;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset('assets/icons/arrow.svg'),
          Text(
            title,
            style: AppTextStyle.body1Medium,
          ),
          showCarts
              ? SvgPicture.asset("assets/icons/cart.svg")
              : SizedBox(
                  height: 30,
                  width: 30,
                ),
        ],
      ),
    );
  }
}
