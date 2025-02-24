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
      createdTime: const TimestampConverter()
          .fromJson(json['createdTime'] as Map<String, dynamic>),
      phoneNumber: json['phoneNumber'] as String,
      isManager: json['isManager'] as bool,
      agreeTerms1: json['agreeTerms1'] as bool,
      agreeTerms2: json['agreeTerms2'] as bool,
      agreeMarketing: json['agreeMarketing'] as bool,
      currentLocation: json['currentLocation'] as String,
      gender: json['gender'] as String,
      name: json['name'] as String,
      birthday: const TimestampConverter()
          .fromJson(json['birthday'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReadUserImplToJson(_$ReadUserImpl instance) =>
    <String, dynamic>{
      'userid': instance.userid,
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'photoUrl': instance.photoUrl,
      'createdTime': const TimestampConverter().toJson(instance.createdTime),
      'phoneNumber': instance.phoneNumber,
      'isManager': instance.isManager,
      'agreeTerms1': instance.agreeTerms1,
      'agreeTerms2': instance.agreeTerms2,
      'agreeMarketing': instance.agreeMarketing,
      'currentLocation': instance.currentLocation,
      'gender': instance.gender,
      'name': instance.name,
      'birthday': const TimestampConverter().toJson(instance.birthday),
    };
