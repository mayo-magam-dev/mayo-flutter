// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadUserImpl _$$ReadUserImplFromJson(Map<String, dynamic> json) =>
    _$ReadUserImpl(
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      photoUrl: json['photoUrl'] as String?,
      phoneNumber: json['phoneNumber'] as String?,
      agreeMarketing: json['agreeMarketing'] as bool?,
      gender: json['gender'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$ReadUserImplToJson(_$ReadUserImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
      'phoneNumber': instance.phoneNumber,
      'agreeMarketing': instance.agreeMarketing,
      'gender': instance.gender,
      'name': instance.name,
    };
