import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key, required this.index});
  final int index;
  final int first = 0;
  final int second = 1;
  final int third = 2;
  final int fourth = 3;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: GlobalMainYellow.yellow200,
      unselectedLabelStyle: TextStyle(color: GlobalMainGrey.grey400),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: (index == first)
              ? SvgPicture.asset('assets/icons/selected_home.svg')
              : SvgPicture.asset('assets/icons/home.svg'),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: (index == second)
              ? SvgPicture.asset('assets/icons/selected_discount.svg')
              : SvgPicture.asset('assets/icons/discount.svg'),
          label: '지금 할인중',
        ),
        BottomNavigationBarItem(
          icon: (index == third)
              ? SvgPicture.asset('assets/icons/selected_order_history.svg')
              : SvgPicture.asset('assets/icons/order_history.svg'),
          label: '주문내역',
        ),
        BottomNavigationBarItem(
          icon: (index == fourth)
              ? SvgPicture.asset('assets/icons/selected_user_profile.svg')
              : SvgPicture.asset('assets/icons/user_profile.svg'),
          label: 'MY',
        ),
      ],
    );
  }
}
