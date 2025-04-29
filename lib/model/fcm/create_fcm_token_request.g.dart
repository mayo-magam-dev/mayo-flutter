// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_fcm_token_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateFCMTokenRequestImpl _$$CreateFCMTokenRequestImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateFCMTokenRequestImpl(
      userId: json['userId'] as String,
      fcmToken: json['fcmToken'] as String,
    );

Map<String, dynamic> _$$CreateFCMTokenRequestImplToJson(
        _$CreateFCMTokenRequestImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'fcmToken': instance.fcmToken,
    };
