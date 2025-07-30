import 'dart:io';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mayo_flutter/dataSource/banner.dart';
import 'package:mayo_flutter/dataSource/cart.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/model/banner/banner.dart' as mayo_banner;
import 'package:mayo_flutter/model/cart/read_cart_response.dart';
import 'package:mayo_flutter/model/store/read_simple_store_response.dart';

part 'home_provider.g.dart';

@riverpod
class HomeNotifier extends _$HomeNotifier {
  final BannerDataSource _bannerDataSource = BannerDataSource();
  final CartDataSource _cartDataSource = CartDataSource();
  final StoreDataSource _storeDataSource = StoreDataSource();

  @override
  HomeState build() {
    // 초기 데이터 로딩
    Future.microtask(() => loadHomeData());
    return const HomeState();
  }

  Future<void> loadHomeData() async {
    state = state.copyWith(isLoading: true);

    try {
      await Future.wait([
        _loadBanners(),
        _loadCartItems(),
        _loadRandomStores(),
      ]);
      _submitFirebaseToken();
    } catch (e) {
      state = state.copyWith(error: e.toString());
    } finally {
      state = state.copyWith(isLoading: false);
    }
  }

  Future<void> loadBanners() async {
    state = state.copyWith(isLoading: true);
    await _loadBanners();
    state = state.copyWith(isLoading: false);
  }

  Future<void> _loadBanners() async {
    try {
      final banners = await _bannerDataSource.getBanners();
      state = state.copyWith(banners: banners);
    } catch (e) {
      state = state.copyWith(error: '배너 로딩 오류: $e');
    }
  }

  Future<void> loadCartItems() async {
    await _loadCartItems();
  }

  Future<void> _loadCartItems() async {
    try {
      final cartItems = await _cartDataSource.getCarts();
      state = state.copyWith(cartItems: cartItems);
    } catch (e) {
      state = state.copyWith(error: '장바구니 로딩 오류: $e');
    }
  }

  Future<void> loadRandomStores() async {
    await _loadRandomStores();
  }

  Future<void> _loadRandomStores() async {
    try {
      final randomStores = await _storeDataSource.getRandomOpenStores();
      state = state.copyWith(randomStores: randomStores);
    } catch (e) {
      state = state.copyWith(error: '랜덤 상점 로딩 오류: $e');
    }
  }

  void _submitFirebaseToken() async {
    await FirebaseMessaging.instance.requestPermission(
      badge: true,
      alert: true,
      sound: true,
    );

    // iOS 기기인 경우에만 APNS 토큰 처리
    if (Platform.isIOS) {
      String? apnsToken;
      int attempts = 0;

      while (apnsToken == null && attempts < 10) {
        apnsToken = await FirebaseMessaging.instance.getAPNSToken();
        if (apnsToken == null) {
          await Future.delayed(Duration(milliseconds: 500));
          attempts++;
        }
      }

      if (apnsToken != null) {
        if (kDebugMode) {
          print('APNS Token: $apnsToken');
        }
      }
    }

    // FCM 토큰 가져오기
    final fcmToken = await FirebaseMessaging.instance.getToken();
    if (fcmToken != null) {
      if (kDebugMode) {
        print('FCM Token: $fcmToken');
      }
    }
  }

  void clearError() {
    state = state.copyWith(error: null);
  }
}

class HomeState {
  final bool isLoading;
  final List<mayo_banner.Banner> banners;
  final List<ReadCartResponse> cartItems;
  final List<ReadSimpleStoreResponse> randomStores;
  final String? error;

  const HomeState({
    this.isLoading = false,
    this.banners = const [],
    this.cartItems = const [],
    this.randomStores = const [],
    this.error,
  });

  HomeState copyWith({
    bool? isLoading,
    List<mayo_banner.Banner>? banners,
    List<ReadCartResponse>? cartItems,
    List<ReadSimpleStoreResponse>? randomStores,
    String? error,
  }) {
    return HomeState(
      isLoading: isLoading ?? this.isLoading,
      banners: banners ?? this.banners,
      cartItems: cartItems ?? this.cartItems,
      randomStores: randomStores ?? this.randomStores,
      error: error ?? this.error,
    );
  }
}
