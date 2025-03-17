import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayo_flutter/bloc/sign_up/sign_up_bloc.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/view/cart/cart_page.dart';
import 'package:mayo_flutter/view/home/home_page.dart';
import 'package:mayo_flutter/view/login/login_page.dart';
import 'package:mayo_flutter/view/my/my_page.dart';
import 'package:mayo_flutter/view/on_discount/on_discount_page.dart';
import 'package:mayo_flutter/view/orders/order_detail_page.dart';
import 'package:mayo_flutter/view/orders/order_page.dart';
import 'package:mayo_flutter/view/product/product_page.dart';
import 'package:mayo_flutter/view/signUp/step1/sign_up_step1_page.dart';
import 'package:mayo_flutter/view/signUp/step2/sign_up_step2_page.dart';
import 'package:mayo_flutter/view/signUp/step3/sign_up_step3_page.dart';
import 'package:mayo_flutter/view/store/store_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/view/sub/onsale_page.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

// 회원가입에 사용할 BloC을 미리 생성 (Singleton처럼 사용)
final _signUpBloc = SignUpBloc(userDataSource: UserDataSource());

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/store/1',
  // redirect: (context, state) async {
  //   final auth = FirebaseAuth.instance;
  //   final userDataSource = UserDataSource();
  //   if (auth.currentUser == null) {
  //     return '/login';
  //   }

  //   try {
  //     await userDataSource.getUser();
  //     debugPrint('사용자 정보 있음: 리다이렉트 없음');
  //     return null;
  //   } catch (e) {
  //     debugPrint('사용자 정보 없음: /signup으로 리다이렉트');
  //     if (state.uri.path.startsWith('/signup')) {
  //       debugPrint('이미 회원가입 페이지에 있음: 리다이렉트 없음');
  //       return null;
  //     }
  //     return '/signup';
  //   }
  // },
  routes: [
    GoRoute(
      path: '/product/:data',
      builder: (context, state) {
        return ProductPage(
          id: state.pathParameters['data']!,
        );
      },
    ),
    GoRoute(
        path: '/store/:id',
        builder: (context, state) {
          return StorePage(id: state.pathParameters['id']!);
        }),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginPage(),
    ),
    GoRoute(
      path: '/onsale',
      builder: (context, state) => const OnsalePage(),
    ),
    GoRoute(
        path: '/order/:id',
        builder: (context, state) {
          return OrderDetailPage(id: state.pathParameters['id']!);
        }),
    GoRoute(
      path: '/signup',
      builder: (context, state) => BlocProvider.value(
        value: _signUpBloc,
        child: SignUpStep1Page(),
      ),
    ),
    GoRoute(
      path: '/signup/step2',
      builder: (context, state) => BlocProvider.value(
        value: _signUpBloc,
        child: SignUpStep2Page(),
      ),
    ),
    GoRoute(
      path: '/signup/step3',
      builder: (context, state) => BlocProvider.value(
        value: _signUpBloc,
        child: SignUpStep3Page(),
      ),
    ),
    ShellRoute(
      navigatorKey: _shellNavigatorKey,
      builder: (context, state, child) {
        return ScaffoldWithBottomNavBar(child: child);
      },
      routes: [
        GoRoute(
          path: '/',
          builder: (context, state) => const HomePage(),
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
