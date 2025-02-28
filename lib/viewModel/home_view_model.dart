import 'package:flutter/material.dart';
import 'package:mayo_flutter/dataSource/banner.dart';
import 'package:mayo_flutter/dataSource/cart.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/model/banner/banner.dart' as mayo_banner;
import 'package:mayo_flutter/model/cart/read_cart_response.dart';
import 'package:mayo_flutter/model/store/read_simple_store_response.dart';

class HomeViewModel extends ChangeNotifier {
  final BannerDataSource _bannerDataSource = BannerDataSource();
  final CartDataSource _cartDataSource = CartDataSource();
  final StoreDataSource _storeDataSource = StoreDataSource();

  List<mayo_banner.Banner> _banners = [];
  List<mayo_banner.Banner> get banners => _banners;

  List<ReadCartResponse> _cartItems = [];
  List<ReadCartResponse> get cartItems => _cartItems;
  int get cartItemCount => _cartItems.length;

  List<ReadSimpleStoreResponse> _randomStores = [];
  List<ReadSimpleStoreResponse> get randomStores => _randomStores;

  bool _isLoading = false;
  bool get isLoading => _isLoading;

  Future<void> loadBanners() async {
    try {
      _isLoading = true;
      notifyListeners();
      _banners = await _bannerDataSource.getBanners();
    } catch (e) {
      print('Error loading banners: $e');
    } finally {
      _isLoading = false;
      notifyListeners();
    }
  }

  Future<void> loadCartItems() async {
    try {
      _cartItems = await _cartDataSource.getCarts();
      notifyListeners();
    } catch (e) {
      print('Error loading cart items: $e');
    }
  }

  Future<void> loadRandomStores() async {
    try {
      _randomStores = await _storeDataSource.getRandomOpenStores();
      notifyListeners();
    } catch (e) {
      print('Error loading random stores: $e');
    }
  }

  Future<void> initializeHomeData() async {
    await Future.wait([
      loadBanners(),
      loadCartItems(),
      loadRandomStores(),
    ]);
  }
} 