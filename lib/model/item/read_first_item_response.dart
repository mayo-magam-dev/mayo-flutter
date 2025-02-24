import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_first_item_response.freezed.dart';
part 'read_first_item_response.g.dart';

@freezed
class ReadFirstItemResponse with _$ReadFirstItemResponse {
  factory ReadFirstItemResponse({
    required String itemName,
    required int itemQuantity,
  }) = _ReadFirstItemResponse;

  factory ReadFirstItemResponse.fromJson(Map<String, dynamic> json) =>
      _$ReadFirstItemResponseFromJson(json);
} 