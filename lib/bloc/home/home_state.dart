part of 'home_bloc.dart';

class HomeState {
  final List<mayo_banner.Banner> banners;
  final List<ReadCartResponse> cartItems;
  final List<ReadSimpleStoreResponse> randomStores;
  final bool isLoading;
  final String? error;

  const HomeState({
    this.banners = const [],
    this.cartItems = const [],
    this.randomStores = const [],
    this.isLoading = false,
    this.error,
  });

  int get cartItemCount => cartItems.length;

  HomeState copyWith({
    List<mayo_banner.Banner>? banners,
    List<ReadCartResponse>? cartItems,
    List<ReadSimpleStoreResponse>? randomStores,
    bool? isLoading,
    String? error,
  }) {
    return HomeState(
      banners: banners ?? this.banners,
      cartItems: cartItems ?? this.cartItems,
      randomStores: randomStores ?? this.randomStores,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }
}
