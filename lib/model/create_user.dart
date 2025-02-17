import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_user.freezed.dart';

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
  }) = _CreateUser;

  
}
