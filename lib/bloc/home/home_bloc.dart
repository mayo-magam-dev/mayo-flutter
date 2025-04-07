import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayo_flutter/dataSource/banner.dart';
import 'package:mayo_flutter/dataSource/cart.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/model/banner/banner.dart' as mayo_banner;
import 'package:mayo_flutter/model/cart/read_cart_response.dart';
import 'package:mayo_flutter/model/store/read_simple_store_response.dart';

part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  final BannerDataSource _bannerDataSource = BannerDataSource();
  final CartDataSource _cartDataSource = CartDataSource();
  final StoreDataSource _storeDataSource = StoreDataSource();

  HomeBloc() : super(const HomeState()) {
    on<LoadHomeData>(_onLoadHomeData);
    on<LoadBanners>(_onLoadBanners);
    on<LoadCartItems>(_onLoadCartItems);
    on<LoadRandomStores>(_onLoadRandomStores);
  }

  Future<void> _onLoadHomeData(
      LoadHomeData event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      // 병렬로 데이터 로드
      await Future.wait([
        _loadBanners(emit),
        _loadCartItems(emit),
        _loadRandomStores(emit),
      ]);
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }

  Future<void> _onLoadBanners(
      LoadBanners event, Emitter<HomeState> emit) async {
    emit(state.copyWith(isLoading: true));
    await _loadBanners(emit);
    emit(state.copyWith(isLoading: false));
  }

  Future<void> _loadBanners(Emitter<HomeState> emit) async {
    try {
      final banners = await _bannerDataSource.getBanners();
      emit(state.copyWith(banners: banners));
    } catch (e) {
      emit(state.copyWith(error: '배너 로딩 오류: $e'));
    }
  }

  Future<void> _onLoadCartItems(
      LoadCartItems event, Emitter<HomeState> emit) async {
    await _loadCartItems(emit);
  }

  Future<void> _loadCartItems(Emitter<HomeState> emit) async {
    try {
      final cartItems = await _cartDataSource.getCarts();
      emit(state.copyWith(cartItems: cartItems));
    } catch (e) {
      emit(state.copyWith(error: '장바구니 로딩 오류: $e'));
    }
  }

  Future<void> _onLoadRandomStores(
      LoadRandomStores event, Emitter<HomeState> emit) async {
    await _loadRandomStores(emit);
  }

  Future<void> _loadRandomStores(Emitter<HomeState> emit) async {
    try {
      final randomStores = await _storeDataSource.getRandomOpenStores();
      emit(state.copyWith(randomStores: randomStores));
    } catch (e) {
      emit(state.copyWith(error: '랜덤 상점 로딩 오류: $e'));
    }
  }
}
