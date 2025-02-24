import 'package:freezed_annotation/freezed_annotation.dart';

part 'update_notice_store_request.freezed.dart';
part 'update_notice_store_request.g.dart';

@freezed
class UpdateNoticeStoreRequest with _$UpdateNoticeStoreRequest {
  factory UpdateNoticeStoreRequest({
    required String storeId,
  }) = _UpdateNoticeStoreRequest;

  factory UpdateNoticeStoreRequest.fromJson(Map<String, dynamic> json) =>
      _$UpdateNoticeStoreRequestFromJson(json);
} 