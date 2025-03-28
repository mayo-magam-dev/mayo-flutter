import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_fcm_token_request.freezed.dart';
part 'create_fcm_token_request.g.dart';

@freezed
class CreateFCMTokenRequest with _$CreateFCMTokenRequest {
  factory CreateFCMTokenRequest({
    required String userId,
    required String fcmToken,
  }) = _CreateFCMTokenRequest;

  factory CreateFCMTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$CreateFCMTokenRequestFromJson(json);
} 