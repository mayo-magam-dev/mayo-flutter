// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateUserImpl _$$CreateUserImplFromJson(Map<String, dynamic> json) =>
    _$CreateUserImpl(
      email: json['email'] as String,
      gender: json['gender'] as String,
      name: json['name'] as String,
      displayName: json['displayName'] as String,
      phoneNumber: json['phoneNumber'] as String,
      agreeMarketing: json['agreeMarketing'] as bool,
      agreeTerms1: json['agreeTerms1'] as bool,
      agreeTerms2: json['agreeTerms2'] as bool,
      birthday: json['birthday'] as String,
    );

Map<String, dynamic> _$$CreateUserImplToJson(_$CreateUserImpl instance) =>
    <String, dynamic>{
      'email': instance.email,
      'gender': instance.gender,
      'name': instance.name,
      'displayName': instance.displayName,
      'phoneNumber': instance.phoneNumber,
      'agreeMarketing': instance.agreeMarketing,
      'agreeTerms1': instance.agreeTerms1,
      'agreeTerms2': instance.agreeTerms2,
      'birthday': instance.birthday,
    };
