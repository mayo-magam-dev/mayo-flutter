import 'package:freezed_annotation/freezed_annotation.dart';

part 'fcm_message_request.freezed.dart';
part 'fcm_message_request.g.dart';

@freezed
class FCMMessageRequest with _$FCMMessageRequest {
  factory FCMMessageRequest({
    required bool validateOnly,
    required FCMMessage message,
  }) = _FCMMessageRequest;

  factory FCMMessageRequest.fromJson(Map<String, dynamic> json) =>
      _$FCMMessageRequestFromJson(json);
}

@freezed
class FCMMessage with _$FCMMessage {
  factory FCMMessage({
    required FCMNotification notification,
    required String token,
    required FCMData data,
  }) = _FCMMessage;

  factory FCMMessage.fromJson(Map<String, dynamic> json) =>
      _$FCMMessageFromJson(json);
}

@freezed
class FCMNotification with _$FCMNotification {
  factory FCMNotification({
    required String title,
    required String body,
    required String image,
  }) = _FCMNotification;

  factory FCMNotification.fromJson(Map<String, dynamic> json) =>
      _$FCMNotificationFromJson(json);
}

@freezed
class FCMData with _$FCMData {
  factory FCMData({
    required String initialPageName,
  }) = _FCMData;

  factory FCMData.fromJson(Map<String, dynamic> json) =>
      _$FCMDataFromJson(json);
} 