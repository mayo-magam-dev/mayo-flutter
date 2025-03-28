import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_fcm_token.freezed.dart';
part 'create_fcm_token.g.dart';

@freezed
class CreateFcmToken with _$CreateFcmToken {
  factory CreateFcmToken(
      {required String deviceType, required String fcmToken}) = _CreateFcmToken;

  factory CreateFcmToken.fromJson(Map<String, dynamic> json) =>
      _$CreateFcmTokenFromJson(json);
}