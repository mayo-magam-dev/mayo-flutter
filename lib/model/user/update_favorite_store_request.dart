import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_favorite_store_request.freezed.dart';
part 'update_favorite_store_request.g.dart';

@freezed
class UpdateFavoriteStoreRequest with _$UpdateFavoriteStoreRequest {
  factory UpdateFavoriteStoreRequest({
    required String storeId,
  }) = _UpdateFavoriteStoreRequest;

  factory UpdateFavoriteStoreRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateFavoriteStoreRequestFromJson(json);
}
