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
    String? photoUrl,
    @TimestampConverter() required DateTime createdTime,
    String? phoneNumber,
    required bool isManager,
    bool? agreeMarketing,
    required String currentLocation,
    String? gender,
    String? name,
    @TimestampConverter() required DateTime birthday,
  }) = _ReadUser;

  factory ReadUser.fromJson(Map<String, dynamic> json) =>
      _$ReadUserFromJson(json);
}
