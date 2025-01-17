import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/home.svg'),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/arrow_discount.svg'),
          label: '2',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/order_history.svg'),
          label: '3',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/user_profile.svg'),
          label: '4',
        ),
      ],
    );
  }
}
