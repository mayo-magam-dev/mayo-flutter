import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

/// 앱의 모든 라우터 경로를 관리하는 abstract class
abstract class AppRoutes {
  // Private constructor to prevent instantiation
  AppRoutes._();

  // Main routes
  static const String home = '/';
  static const String login = '/login';
  static const String cart = '/cart';

  // Store routes
  static const String store = '/store';
  static String storeDetail(String id) => '$store/$id';

  // Product routes
  static const String product = '/product';
  static String productDetail(String data, String storeId, String storeName) =>
      '$product/$data/$storeId/$storeName';

  // Category routes
  static const String onsale = '/onsale';
  static const String meal = '/meal';
  static const String dessert = '/dessert';
  static const String partnerStore = '/partner-store';
  static const String onDiscount = '/on-discount';

  // Order routes
  static const String orders = '/orders';
  static const String orderDetail = '/order';
  static String orderDetailPage(
          String reservationId, String storeId, String reservationState) =>
      '$orderDetail/$reservationId/$storeId/$reservationState';

  // Sign up routes
  static const String signup = '/signup';
  static const String signupStep1 = '/signup';
  static const String signupStep2 = '/signup/step2';
  static const String signupStep3 = '/signup/step3';
  static const String signupStep5 = '/signup/step5';

  // My page routes
  static const String my = '/my';
  static const String profile = '/profile';
  static const String accountDelete = '/account-delete';
  static const String announcement = '/announcement';
  static const String announcementDetail = '/announcement-detail';
  static const String termsList = '/terms-list';
  static const String termsDetail = '/terms-detail';
  static String termsDetailPage(String boardId) => '$termsDetail/$boardId';
  static const String event = '/event';
  static const String favoriteStore = '/favorite-store';
  static const String customerCenter = '/costomer-center';
  static const String faq = '/faq';
}

/// 라우터 경로 파라미터를 관리하는 abstract class
abstract class RouteParams {
  RouteParams._();

  // Store params
  static const String storeId = 'id';

  // Product params
  static const String productData = 'data';
  static const String productStoreId = 'storeId';
  static const String productStoreName = 'storeName';

  // Order params
  static const String reservationId = 'reservationId';
  static const String orderStoreId = 'storeId';
  static const String reservationState = 'reservationState';

  // Terms params
  static const String boardId = 'boardId';
}

/// 라우터 네비게이션 헬퍼 클래스
abstract class AppNavigation {
  AppNavigation._();

  /// 홈으로 이동
  static void goHome(BuildContext context) => context.go(AppRoutes.home);

  /// 로그인 페이지로 이동
  static void goLogin(BuildContext context) => context.go(AppRoutes.login);

  /// 장바구니로 이동
  static void goCart(BuildContext context) => context.go(AppRoutes.cart);

  /// 가게 상세로 이동
  static void goStoreDetail(BuildContext context, String storeId) =>
      context.go(AppRoutes.storeDetail(storeId));

  /// 상품 상세로 이동
  static void goProductDetail(BuildContext context, String data, String storeId,
          String storeName) =>
      context.go(AppRoutes.productDetail(data, storeId, storeName));

  /// 주문 상세로 이동
  static void goOrderDetail(BuildContext context, String reservationId,
          String storeId, String reservationState) =>
      context.go(
          AppRoutes.orderDetailPage(reservationId, storeId, reservationState));

  /// 회원가입 단계별 이동
  static void goSignupStep1(BuildContext context) =>
      context.go(AppRoutes.signupStep1);
  static void goSignupStep2(BuildContext context) =>
      context.go(AppRoutes.signupStep2);
  static void goSignupStep3(BuildContext context) =>
      context.go(AppRoutes.signupStep3);
  static void goSignupStep5(BuildContext context) =>
      context.go(AppRoutes.signupStep5);

  /// 마이페이지 관련 이동
  static void goMy(BuildContext context) => context.go(AppRoutes.my);
  static void goProfile(BuildContext context) => context.go(AppRoutes.profile);
  static void goFavoriteStore(BuildContext context) =>
      context.go(AppRoutes.favoriteStore);
  static void goAnnouncement(BuildContext context) =>
      context.go(AppRoutes.announcement);
  static void goTermsList(BuildContext context) =>
      context.go(AppRoutes.termsList);
  static void goTermsDetail(BuildContext context, String boardId) =>
      context.go(AppRoutes.termsDetailPage(boardId));

  /// 뒤로 가기
  static void pop(BuildContext context) => context.pop();

  /// 이전 페이지로 교체
  static void pushReplacement(BuildContext context, String route) =>
      context.go(route);
}
