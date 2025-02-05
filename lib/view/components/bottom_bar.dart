import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({
    super.key,
    required this.index,
  });
  final int index;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final int home = 0;

  final int discount = 1;

  final int orderHistory = 2;

  final int userProfile = 3;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: widget.index,
      selectedItemColor: GlobalMainYellow.yellow200,
      unselectedItemColor: GlobalMainGrey.grey300,
      showSelectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: (widget.index == home)
              ? SvgPicture.asset('assets/icons/selected_home.svg')
              : SvgPicture.asset('assets/icons/home.svg'),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: (widget.index == discount)
              ? SvgPicture.asset('assets/icons/selected_discount.svg')
              : SvgPicture.asset(
                  'assets/icons/discount.svg',
                ),
          label: '지금 할인 중',
        ),
        BottomNavigationBarItem(
          icon: (widget.index == orderHistory)
              ? SvgPicture.asset('assets/icons/selected_order_history.svg')
              : SvgPicture.asset('assets/icons/order_history.svg'),
          label: '주문내역',
        ),
        BottomNavigationBarItem(
          icon: (widget.index == userProfile)
              ? SvgPicture.asset('assets/icons/selected_user_profile.svg')
              : SvgPicture.asset('assets/icons/user_profile.svg'),
          label: 'MY',
        ),
      ],
    );
  }
}
