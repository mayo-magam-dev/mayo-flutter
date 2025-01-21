import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: GlobalMainYellow.yellow200,
      unselectedLabelStyle: TextStyle(color: GlobalMainGrey.grey400),
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/selected_home.svg'),
          label: '홈',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/discount.svg'),
          label: '지금 할인중',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/order_history.svg'),
          label: '주문내역',
        ),
        BottomNavigationBarItem(
          icon: SvgPicture.asset('assets/icons/user_profile.svg'),
          label: 'MY',
        ),
      ],
    );
    // return BottomNavigationBar(
    //   items: [
    //     BottomNavigationBarItem(
    //       icon: SvgPicture.asset('assets/icons/home.svg'),
    //       label: '홈',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: SvgPicture.asset('assets/icons/arrow_discount.svg'),
    //       label: '2',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: SvgPicture.asset('assets/icons/order_history.svg'),
    //       label: '3',
    //     ),
    //     BottomNavigationBarItem(
    //       icon: SvgPicture.asset('assets/icons/user_profile.svg'),
    //       label: '4',
    //     ),
    //   ],
    // );
  }
}
