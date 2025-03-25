import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mayo_flutter/util/timestamp_converter.dart';

part 'create_client_push_notification_request.freezed.dart';
part 'create_client_push_notification_request.g.dart';

@freezed
class CreateClientPushNotificationRequest
    with _$CreateClientPushNotificationRequest {
  factory CreateClientPushNotificationRequest({
    required String notificationImageUrl,
    required String notificationText,
    required String notificationTitle,
    required int numSent,
    required String sender,
    required bool status,
    @TimestampConverter() required DateTime timestamp,
  }) = _CreateClientPushNotificationRequest;

  factory CreateClientPushNotificationRequest.fromJson(
          Map<String, dynamic> json) =>
      _$CreateClientPushNotificationRequestFromJson(json);
}
