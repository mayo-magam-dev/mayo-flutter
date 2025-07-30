import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mayo_flutter/providers/login_provider.dart';
import 'package:mayo_flutter/providers/sign_up_provider.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/view/cart/cart_page.dart';
import 'package:mayo_flutter/view/home/home_page.dart';
import 'package:mayo_flutter/view/login/login_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/acount_delete_page/account_delete_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/announcement_page/announcement_page.dart';
import 'package:mayo_flutter/view/my/details/announcement_page/announcement_page.dart';
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
import 'package:mayo_flutter/model/board/board.dart';
import 'package:mayo_flutter/router/app_routes.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

// 커스텀 페이지 전환 애니메이션
class CustomPageTransition extends StatelessWidget {
  final Widget child;
  final Animation<double> animation;

  const CustomPageTransition({
    super.key,
    required this.child,
    required this.animation,
  });

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: Tween<Offset>(
        begin: const Offset(1.0, 0.0),
        end: Offset.zero,
      ).animate(CurvedAnimation(
        parent: animation,
        curve: Curves.easeInOutCubic,
        reverseCurve: Curves.easeInOutCubic,
      )),
      child: FadeTransition(
        opacity: animation,
        child: child,
      ),
    );
  }
}

final router = GoRouter(
  navigatorKey: _rootNavigatorKey,
  initialLocation: AppRoutes.home,
  redirect: (context, state) {
    // 로그인 상태 확인을 위한 Consumer 위젯
    return null; // 일단 null 반환, 실제 리다이렉트는 아래에서 처리
  },
  routes: [
    GoRoute(
      path:
          '/product/:${RouteParams.productData}/:${RouteParams.productStoreId}/:${RouteParams.productStoreName}',
      builder: (context, state) => ProductPage(
        id: state.pathParameters[RouteParams.productData]!,
        storeId: state.pathParameters[RouteParams.productStoreId]!,
        storeName: state.pathParameters[RouteParams.productStoreName]!,
      ),
    ),
    GoRoute(
        path: '/store/:${RouteParams.storeId}',
        builder: (context, state) =>
            StorePage(id: state.pathParameters[RouteParams.storeId]!)),
    GoRoute(
        path: AppRoutes.login,
        pageBuilder: (context, state) => CustomTransitionPage(
              key: state.pageKey,
              child: const LoginPage(),
              transitionsBuilder:
                  (context, animation, secondaryAnimation, child) {
                return CustomPageTransition(
                  animation: animation,
                  child: child,
                );
              },
            )),
    GoRoute(
        path: AppRoutes.cart, builder: (context, state) => const CartPage()),
    GoRoute(
      path: AppRoutes.onsale,
      builder: (context, state) => OnsalePage(),
    ),
    GoRoute(
      path: AppRoutes.meal,
      builder: (context, state) => MealPage(),
    ),
    GoRoute(
      path: AppRoutes.dessert,
      builder: (context, state) => DessertPage(),
    ),
    GoRoute(
      path: AppRoutes.partnerStore,
      builder: (context, state) => PartnerStorePage(),
    ),
    GoRoute(
      path:
          '/order/:${RouteParams.reservationId}/:${RouteParams.orderStoreId}/:${RouteParams.reservationState}',
      builder: (context, state) {
        return OrderDetailPage(
          reservationId: state.pathParameters[RouteParams.reservationId]!,
          storeId: state.pathParameters[RouteParams.orderStoreId]!,
          reservationState: state.pathParameters[RouteParams.reservationState]!,
        );
      },
    ),
    GoRoute(
        path: AppRoutes.signupStep1,
        builder: (context, state) => SignUpStep1Page()),
    GoRoute(
        path: AppRoutes.signupStep2,
        builder: (context, state) => SignUpStep2Page()),

    GoRoute(
        path: AppRoutes.signupStep3,
        builder: (context, state) => SignUpStep3Page()),
    GoRoute(
        path: AppRoutes.signupStep5,
        builder: (context, state) => SignUpStep5Page()),
    GoRoute(
        path: AppRoutes.accountDelete,
        builder: (context, state) => AccountDeletePage()),
    GoRoute(
        path: AppRoutes.announcement,
        builder: (context, state) => AnnouncementPage()),
    GoRoute(
        path: AppRoutes.announcementDetail,
        builder: (context, state) {
          final board = state.extra as Board;
          return AnnouncementDetailPage(board: board);
        }),

    // ✅ 탭 라우트들
    StatefulShellRoute.indexedStack(
      builder: (context, state, shell) =>
          ScaffoldWithBottomNavBar(shell: shell),
      branches: [
        StatefulShellBranch(routes: [
          GoRoute(
              path: AppRoutes.home,
              builder: (context, state) => const HomePage())
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
              path: AppRoutes.onDiscount,
              builder: (context, state) => OnDiscountPage())
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
              path: AppRoutes.orders,
              builder: (context, state) => const OrderPage())
        ]),
        StatefulShellBranch(routes: [
          GoRoute(
              path: AppRoutes.my, builder: (context, state) => const MyPage()),
          GoRoute(
              path: AppRoutes.termsList,
              builder: (context, state) => const TermsListPage()),
          GoRoute(
              path: '/terms-detail/:${RouteParams.boardId}',
              builder: (context, state) => TermsDetailPage(
                  boardId: state.pathParameters[RouteParams.boardId])),
          GoRoute(
              path: AppRoutes.profile,
              builder: (context, state) => ProfilePage()),
          GoRoute(
              path: AppRoutes.event,
              builder: (context, state) => const EventPage()),
          GoRoute(
              path: AppRoutes.favoriteStore,
              builder: (context, state) => const FavoriteStorePage()),
          GoRoute(
              path: AppRoutes.customerCenter,
              builder: (context, state) => const CostomerCenterPage()),
          GoRoute(
              path: AppRoutes.faq,
              builder: (context, state) => const FaqPage()),
        ]),
      ],
    ),
  ],
);

Widget _buildPage(GoRouterState state) {
  // 각 라우트에 맞는 페이지를 반환
  switch (state.matchedLocation) {
    case AppRoutes.login:
      return const LoginPage();
    case AppRoutes.cart:
      return const CartPage();
    case AppRoutes.onsale:
      return OnsalePage();
    case AppRoutes.meal:
      return MealPage();
    case AppRoutes.dessert:
      return DessertPage();
    case AppRoutes.partnerStore:
      return PartnerStorePage();
    case AppRoutes.signupStep1:
      return SignUpStep1Page();
    case AppRoutes.signupStep2:
      return SignUpStep2Page();
    case AppRoutes.signupStep3:
      return SignUpStep3Page();
    case AppRoutes.signupStep5:
      return SignUpStep5Page();
    case AppRoutes.accountDelete:
      return AccountDeletePage();
    case AppRoutes.announcement:
      return AnnouncementPage();
    case AppRoutes.profile:
      return ProfilePage();
    case AppRoutes.event:
      return const EventPage();
    case AppRoutes.favoriteStore:
      return const FavoriteStorePage();
    case AppRoutes.customerCenter:
      return const CostomerCenterPage();
    case AppRoutes.faq:
      return const FaqPage();
    case AppRoutes.termsList:
      return const TermsListPage();
    default:
      return const HomePage();
  }
}

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
