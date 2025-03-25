import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_cart_response.freezed.dart';
part 'read_cart_response.g.dart';

@freezed
class ReadCartResponse with _$ReadCartResponse {
  factory ReadCartResponse({
    required String cartId,
    required int cartItemCount,
    required int itemQuantity,
    required double subtotal,
    required String itemName,
    required String itemImage,
    required String storeId,
  }) = _ReadCartResponse;

  factory ReadCartResponse.fromJson(Map<String, dynamic> json) =>
      _$ReadCartResponseFromJson(json);
}
