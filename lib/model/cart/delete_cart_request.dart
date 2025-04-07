import 'package:freezed_annotation/freezed_annotation.dart';
part 'delete_cart_request.freezed.dart';
part 'delete_cart_request.g.dart';

@freezed
class DeleteCartRequest with _$DeleteCartRequest{
  factory DeleteCartRequest({
    required String cartId,
  }) = _DeleteCartRequest;

  factory DeleteCartRequest.fromJson(Map<String, dynamic> json) =>
      _$DeleteCartRequestFromJson(json);
}