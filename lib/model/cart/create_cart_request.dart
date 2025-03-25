import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_cart_request.freezed.dart';
part 'create_cart_request.g.dart';

@freezed
class CreateCartRequest with _$CreateCartRequest {
  factory CreateCartRequest({
    required String itemId,
    required int itemCount,
    required String storeId,
  }) = _CreateCartRequest;

  factory CreateCartRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateCartRequestFromJson(json);
}
