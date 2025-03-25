import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_quantity_request.freezed.dart';
part 'update_quantity_request.g.dart';

@freezed
class UpdateQuantityRequest with _$UpdateQuantityRequest{
  factory UpdateQuantityRequest({
    required String cartId,
    required int itemQuantity,
  }) = _UpdateQuantityRequest;

  factory UpdateQuantityRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateQuantityRequestFromJson(json);
}