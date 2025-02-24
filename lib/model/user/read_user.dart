import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:mayo_flutter/util/timestamp_converter.dart';

part 'read_user.freezed.dart';
part 'read_user.g.dart';

@freezed
class ReadUser with _$ReadUser {
  factory ReadUser({
    required String userid,
    required String uid,
    required String email,
    required String displayName,
    required String photoUrl,
    @TimestampConverter() required DateTime createdTime,
    required String phoneNumber,
    required bool isManager,
    required bool agreeTerms1,
    required bool agreeTerms2,
    required bool agreeMarketing,
    required String currentLocation,
    required String gender,
    required String name,
    @TimestampConverter() required DateTime birthday,
  }) = _ReadUser;

  factory ReadUser.fromJson(Map<String, dynamic> json) =>
      _$ReadUserFromJson(json);
}
