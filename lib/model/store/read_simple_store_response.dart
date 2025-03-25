import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_simple_store_response.freezed.dart';
part 'read_simple_store_response.g.dart';

@freezed
class ReadSimpleStoreResponse with _$ReadSimpleStoreResponse {
  factory ReadSimpleStoreResponse({
    required String id,
    required String storeName,
    required bool openState,
    required int storeSellingType,
    required String address,
    required double maxSalePercent,
  }) = _ReadSimpleStoreResponse;

  factory ReadSimpleStoreResponse.fromJson(Map<String, dynamic> json) =>
      _$ReadSimpleStoreResponseFromJson(json);
} 