// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'fcm_message_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FCMMessageRequestImpl _$$FCMMessageRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$FCMMessageRequestImpl(
      validateOnly: json['validateOnly'] as bool,
      message: FCMMessage.fromJson(json['message'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FCMMessageRequestImplToJson(
        _$FCMMessageRequestImpl instance) =>
    <String, dynamic>{
      'validateOnly': instance.validateOnly,
      'message': instance.message,
    };

_$FCMMessageImpl _$$FCMMessageImplFromJson(Map<String, dynamic> json) =>
    _$FCMMessageImpl(
      notification: FCMNotification.fromJson(
          json['notification'] as Map<String, dynamic>),
      token: json['token'] as String,
      data: FCMData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$FCMMessageImplToJson(_$FCMMessageImpl instance) =>
    <String, dynamic>{
      'notification': instance.notification,
      'token': instance.token,
      'data': instance.data,
    };

_$FCMNotificationImpl _$$FCMNotificationImplFromJson(
        Map<String, dynamic> json) =>
    _$FCMNotificationImpl(
      title: json['title'] as String,
      body: json['body'] as String,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$FCMNotificationImplToJson(
        _$FCMNotificationImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'body': instance.body,
      'image': instance.image,
    };

_$FCMDataImpl _$$FCMDataImplFromJson(Map<String, dynamic> json) =>
    _$FCMDataImpl(
      initialPageName: json['initialPageName'] as String,
    );

Map<String, dynamic> _$$FCMDataImplToJson(_$FCMDataImpl instance) =>
    <String, dynamic>{
      'initialPageName': instance.initialPageName,
    };
