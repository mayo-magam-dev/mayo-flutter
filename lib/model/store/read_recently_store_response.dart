import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_recently_store_response.freezed.dart';
part 'read_recently_store_response.g.dart';

@freezed
class ReadRecentlyStoreResponse with _$ReadRecentlyStoreResponse {
  factory ReadRecentlyStoreResponse({
    required String id,
    required String storeName,
    required bool openState,
    required int storeSellingType,
    required String address,
    String? mainImage,
  }) = _ReadRecentlyStoreResponse;

  factory ReadRecentlyStoreResponse.fromJson(Map<String, dynamic> json) =>
      _$ReadRecentlyStoreResponseFromJson(json);
}
