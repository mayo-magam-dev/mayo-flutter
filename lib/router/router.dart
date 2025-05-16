import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/bloc/sign_up/sign_up_bloc.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/view/cart/cart_page.dart';
import 'package:mayo_flutter/view/home/home_page.dart';
import 'package:mayo_flutter/view/login/login_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/acount_delete_page/account_delete_page.dart';
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
final SignUpBloc signUpBloc = SignUpBloc(userDataSource: UserDataSource());

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/product/:data/:storeId/:storeName',
      builder: (context, state) => ProductPage(
        id: state.pathParameters['data']!,
        storeId: state.pathParameters['storeId']!,
        storeName: state.pathParameters['storeName']!,
      ),
    ),
    GoRoute(
        path: '/store/:id',
        builder: (context, state) =>
            StorePage(id: state.pathParameters['id']!)),
    GoRoute(path: '/login', builder: (context, state) => const LoginPage()),
    GoRoute(path: '/cart', builder: (context, state) => const CartPage()),
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
      path: '/order/:reservationId/:storeId/:reservationState',
      builder: (context, state) {
        return OrderDetailPage(
          reservationId: state.pathParameters['reservationId']!,
          storeId: state.pathParameters['storeId']!,
          reservationState: state.pathParameters['reservationState']!,
        );
      },
    ),
    GoRoute(
        path: '/signup',
        builder: (context, state) =>
            BlocProvider.value(value: signUpBloc, child: SignUpStep1Page())),
    GoRoute(
        path: '/signup/step2',
        builder: (context, state) =>
            BlocProvider.value(value: signUpBloc, child: SignUpStep2Page())),

    GoRoute(
        path: '/signup/step3',
        builder: (context, state) =>
            BlocProvider.value(value: signUpBloc, child: SignUpStep3Page())),
    GoRoute(
        path: '/signup/step5',
        builder: (context, state) =>
            BlocProvider.value(value: signUpBloc, child: SignUpStep5Page())),
    GoRoute(
        path: '/account-delete',
        builder: (context, state) => AccountDeletePage()),
    GoRoute(
        path: '/announcement', builder: (context, state) => AnnouncementPage()),

    // ✅ 탭 라우트들
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) =>
          ScaffoldWithBottomNavBar(shell: shell),
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(path: '/', builder: (context, state) => const HomePage())
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
              path: '/on-discount',
              builder: (context, state) => OnDiscountPage())
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
              path: '/orders', builder: (context, state) => const OrderPage())
        ]),
        StatefulShellBranch(routes: [
          GoRoute(path: '/my', builder: (context, state) => const MyPage()),
          GoRoute(
              path: '/terms-list',
              builder: (context, state) => const TermsListPage()),
          GoRoute(
              path: '/terms-detail/:boardId',
              builder: (context, state) =>
                  TermsDetailPage(boardId: state.pathParameters['boardId'])),
          GoRoute(path: '/profile', builder: (context, state) => ProfilePage()),
          GoRoute(
              path: '/event', builder: (context, state) => const EventPage()),
          GoRoute(
              path: '/favorite-store',
              builder: (context, state) => const FavoriteStorePage()),
          GoRoute(
              path: '/costomer-center',
              builder: (context, state) => const CostomerCenterPage()),
          GoRoute(path: '/faq', builder: (context, state) => const FaqPage()),
        ]),
      ],
    ),
  ],
);

class ScaffoldWithBottomNavBar extends StatelessWidget {
  const ScaffoldWithBottomNavBar({required this.shell, super.key});
  final StatefulNavigationShell shell;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: shell,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: shell.currentIndex,
        onTap: shell.goBranch,
        selectedItemColor: GlobalMainYellow.yellow200,
        unselectedItemColor: GlobalMainGrey.grey300,
        showSelectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: shell.currentIndex == 0
                ? SvgPicture.asset('assets/icons/selected_home.svg')
                : SvgPicture.asset('assets/icons/home.svg'),
            label: '홈',
          ),
          BottomNavigationBarItem(
            icon: shell.currentIndex == 1
                ? SvgPicture.asset('assets/icons/selected_discount.svg')
                : SvgPicture.asset('assets/icons/discount.svg'),
            label: '지금 할인 중',
          ),
          BottomNavigationBarItem(
            icon: shell.currentIndex == 2
                ? SvgPicture.asset('assets/icons/selected_order_history.svg')
                : SvgPicture.asset('assets/icons/order_history.svg'),
            label: '주문내역',
          ),
          BottomNavigationBarItem(
            icon: shell.currentIndex == 3
                ? SvgPicture.asset('assets/icons/selected_user_profile.svg')
                : SvgPicture.asset('assets/icons/user_profile.svg'),
            label: 'MY',
          ),
        ],
      ),
    );
  }
}
