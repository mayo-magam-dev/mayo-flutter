import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/view/cart/cart_page.dart';
import 'package:mayo_flutter/view/home/home_page.dart';
import 'package:mayo_flutter/view/my/my_page.dart';
import 'package:mayo_flutter/view/on_discount/on_discount_page.dart';
import 'package:mayo_flutter/view/orders/order_page.dart';
import 'package:mayo_flutter/view/store/store_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/designSystem/color.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey = GlobalKey<NavigatorState>();

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithBottomNavBar(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
          routes: [
            GoRoute(
              path: 'store/:id',
              builder: (context, state) => StorePage(
                id: state.pathParameters['id']!,
              ),
            ),
          ],
        ),
        GoRoute(
          path: '/on-discount',
          builder: (context, state) => const OnDiscountPage(),
        ),
        GoRoute(
          path: '/orders',
          builder: (context, state) => const OrderPage(),
        ),
        GoRoute(
          path: '/my',
          builder: (context, state) => const MyPage(),
        ),
      ],
    ),
    GoRoute(
      parentNavigatorKey: _rootNavigatorKey,
      path: '/cart',
      builder: (context, state) => const CartPage(),
    ),
  ],
);

class ScaffoldWithBottomNavBar extends StatelessWidget {
  const ScaffoldWithBottomNavBar({
    required this.child,
    super.key,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _calculateSelectedIndex(context),
        onTap: (index) => _onItemTapped(index, context),
        selectedItemColor: GlobalMainYellow.yellow200,
        unselectedItemColor: GlobalMainGrey.grey300,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: (_calculateSelectedIndex(context) == 0)
                ? SvgPicture.asset('assets/icons/selected_home.svg')
                : SvgPicture.asset('assets/icons/home.svg'),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: (_calculateSelectedIndex(context) == 1)
                ? SvgPicture.asset('assets/icons/selected_discount.svg')
                : SvgPicture.asset('assets/icons/discount.svg'),
            label: '지금 할인 중',
          ),
          BottomNavigationBarItem(
            icon: (_calculateSelectedIndex(context) == 2)
                ? SvgPicture.asset('assets/icons/selected_order_history.svg')
                : SvgPicture.asset('assets/icons/order_history.svg'),
            label: '주문내역',
          ),
          BottomNavigationBarItem(
            icon: (_calculateSelectedIndex(context) == 3)
                ? SvgPicture.asset('assets/icons/selected_user_profile.svg')
                : SvgPicture.asset('assets/icons/user_profile.svg'),
            label: 'MY',
          ),
        ],
      ),
    );
  }

  int _calculateSelectedIndex(BuildContext context) {
    final GoRouterState state = GoRouterState.of(context);
    final String path = state.uri.path;
    if (path.startsWith('/')) return 0;
    if (path.startsWith('/on-discount')) return 1;
    if (path.startsWith('/orders')) return 2;
    if (path.startsWith('/my')) return 3;
    return 0;
  }

  void _onItemTapped(int index, BuildContext context) {
    switch (index) {
      case 0:
        context.go('/');
        break;
      case 1:
        context.go('/on-discount');
        break;
      case 2:
        context.go('/orders');
        break;
      case 3:
        context.go('/my');
        break;
    }
  }
}