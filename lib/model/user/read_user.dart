import 'package:freezed_annotation/freezed_annotation.dart';

part 'read_user.freezed.dart';
part 'read_user.g.dart';

@freezed
class ReadUser with _$ReadUser {
  factory ReadUser({
    required String uid,
    required String email,
    required String displayName,
    String? photoUrl,
    String? phoneNumber,
    bool? agreeMarketing,
    String? gender,
    String? name,
  }) = _ReadUser;

  factory ReadUser.fromJson(Map<String, dynamic> json) =>
      _$ReadUserFromJson(json);
}
