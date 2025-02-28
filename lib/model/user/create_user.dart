import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mayo_flutter/util/timestamp_converter.dart';

part 'create_user.freezed.dart';
part 'create_user.g.dart';

@freezed
class CreateUser with _$CreateUser {
  factory CreateUser({
    required String email,
    required String gender,
    required String name,
    required String displayName,
    required String phoneNumber,
    required bool agreeMarketing,
    required bool agreeTerms1,
    required bool agreeTerms2,
    @TimestampConverter() required DateTime birthday,
  }) = _CreateUser;

  factory CreateUser.fromJson(Map<String, dynamic> json) =>
      _$CreateUserFromJson(json);
}
