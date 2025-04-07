import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/bloc/sign_up/sign_up_bloc.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/view/cart/cart_page.dart';
import 'package:mayo_flutter/view/home/home_page.dart';
import 'package:mayo_flutter/view/login/login_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/announcement_page/announcement_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/customer_center_page/costomer_center_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/event_page/event_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/faq_page/faq_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/profile_page/profile_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/terms_list_page/terms_detail.page.dart';
import 'package:mayo_flutter/view/my/detail_pages/terms_list_page/terms_page.dart';
import 'package:mayo_flutter/view/my/details/favorite_store_page/favorite_store_page.dart';
import 'package:mayo_flutter/view/my/my_page.dart';
import 'package:mayo_flutter/view/on_discount/on_discount_page.dart';
import 'package:mayo_flutter/view/orders/order_detail_page.dart';
import 'package:mayo_flutter/view/orders/order_page.dart';
import 'package:mayo_flutter/view/product/product_page.dart';
import 'package:mayo_flutter/view/signUp/step1/sign_up_step1_page.dart';
import 'package:mayo_flutter/view/signUp/step2/sign_up_step2_page.dart';
import 'package:mayo_flutter/view/signUp/step3/sign_up_step3_page.dart';
import 'package:mayo_flutter/view/signUp/step5/sign_up_step5_page.dart';
import 'package:mayo_flutter/view/store/store_page.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/view/sub/meal_page.dart';
import 'package:mayo_flutter/view/sub/dessert_page.dart';
import 'package:mayo_flutter/view/sub/onsale_page.dart';
import 'package:mayo_flutter/view/sub/partner_store_page.dart';
import 'package:mayo_flutter/model/user/local_login_state.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> _shellNavigatorKey =
    GlobalKey<NavigatorState>();

final _signUpBloc = SignUpBloc(userDataSource: UserDataSource());

int count = 0;

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  redirect: (context, state) {
    final loginState = context.read<LoginBloc>().state;

    if (loginState is LoginStateChanged) {
      switch (loginState.loginState) {
        case LocalLoginState.needRegister:
          return "/register";
        case LocalLoginState.login:
          return state.matchedLocation == "/login" ? "/" : null;  
        case LocalLoginState.notLogin:
          return "/login";
      }
    }
    return null;
  },
  routes: [
    GoRoute(
      path: '/product/:data/:storeId/:storeName',
      builder: (context, state) {
        return ProductPage(
          id: state.pathParameters['data']!,
          storeId: state.pathParameters['storeId']!,
          storeName: state.pathParameters['storeName']!,
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
      builder: (context, state) => OnsalePage(),
    ),
    GoRoute(
      path: '/meal',
      builder: (context, state) => MealPage(),
    ),
    GoRoute(
      path: '/dessert',
      builder: (context, state) => DessertPage(),
    ),
    GoRoute(
      path: '/partner-store',
      builder: (context, state) => PartnerStorePage(),
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
    GoRoute(
      path: '/signup/step5',
      builder: (context, state) => BlocProvider.value(
        value: _signUpBloc,
        child: SignUpStep5Page(),
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
          builder: (context, state) => OnDiscountPage(),
        ),
        GoRoute(
          path: '/orders',
          builder: (context, state) => const OrderPage(),
        ),
        GoRoute(
          path: '/my',
          builder: (context, state) => const MyPage(),
        ),
        GoRoute(
          path: '/announcement',
          builder: (context, state) => const AnnouncementPage(),
        ),
        GoRoute(
          path: '/terms-list',
          builder: (context, state) => const TermsListPage(),
        ),
        GoRoute(
          path: '/terms-detail/:boardId',
          builder: (context, state) {
            return TermsDetailPage(boardId: state.pathParameters['boardId']);
          },
        ),
        GoRoute(
          path: '/profile',
          builder: (context, state) => ProfilePage(),
        ),
        GoRoute(
          path: '/event',
          builder: (context, state) => const EventPage(),
        ),
        GoRoute(
          path: '/favorite-store',
          builder: (context, state) => const FavoriteStorePage(),
        ),
        GoRoute(
          path: '/costomer-center',
          builder: (context, state) => const CostomerCenterPage(),
        ),
        GoRoute(
          path: '/faq',
          builder: (context, state) => const FaqPage(),
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
    if (path == '/') return 0;
    if (path == '/on-discount') return 1;
    if (path == '/orders') return 2;
    if (path == '/my') return 3;
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
