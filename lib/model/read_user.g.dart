// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'read_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReadUserImpl _$$ReadUserImplFromJson(Map<String, dynamic> json) =>
    _$ReadUserImpl(
      userid: json['userid'] as String,
      uid: json['uid'] as String,
      email: json['email'] as String,
      displayName: json['displayName'] as String,
      photoUrl: json['photoUrl'] as String,
      createdTime: DateTime.parse(json['createdTime'] as String),
      phoneNumber: json['phoneNumber'] as String,
      isManager: json['isManager'] as bool,
      agreeTerms1: json['agreeTerms1'] as bool,
      agreeTerms2: json['agreeTerms2'] as bool,
      agreeMarketing: json['agreeMarketing'] as bool,
      currentLocation: json['currentLocation'] as String,
      gender: json['gender'] as String,
      name: json['name'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
    );

Map<String, dynamic> _$$ReadUserImplToJson(_$ReadUserImpl instance) =>
    <String, dynamic>{
      'userid': instance.userid,
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
      'createdTime': instance.createdTime.toIso8601String(),
      'phoneNumber': instance.phoneNumber,
      'isManager': instance.isManager,
      'agreeTerms1': instance.agreeTerms1,
      'agreeTerms2': instance.agreeTerms2,
      'agreeMarketing': instance.agreeMarketing,
      'currentLocation': instance.currentLocation,
      'gender': instance.gender,
      'name': instance.name,
      'birthday': instance.birthday.toIso8601String(),
    };
