// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_client_push_notification_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateClientPushNotificationRequestImpl
    _$$CreateClientPushNotificationRequestImplFromJson(
            Map<String, dynamic> json) =>
        _$CreateClientPushNotificationRequestImpl(
          notificationImageUrl: json['notificationImageUrl'] as String,
          notificationText: json['notificationText'] as String,
          notificationTitle: json['notificationTitle'] as String,
          numSent: (json['numSent'] as num).toInt(),
          sender: json['sender'] as String,
          status: json['status'] as bool,
          timestamp: const TimestampConverter()
              .fromJson(json['timestamp'] as Map<String, dynamic>),
        );

Map<String, dynamic> _$$CreateClientPushNotificationRequestImplToJson(
        _$CreateClientPushNotificationRequestImpl instance) =>
    <String, dynamic>{
      'notificationImageUrl': instance.notificationImageUrl,
      'notificationText': instance.notificationText,
      'notificationTitle': instance.notificationTitle,
      'numSent': instance.numSent,
      'sender': instance.sender,
      'status': instance.status,
      'timestamp': const TimestampConverter().toJson(instance.timestamp),
    };
