part of 'sign_up_bloc.dart';

class SignUpState {
  final CreateUser? userInfo;
  final String? password;
  final bool isLoading;
  final String? error;
  final bool isSuccess;

  // 동의 관련 필드 직접 관리
  final bool agreeTerms1;
  final bool agreeTerms2;
  final bool agreeMarketing;

  // 비밀번호 확인 상태
  final bool passwordConfirmed;

  // 이메일 직접 관리 (userInfo와 별도로)
  final String? emailValue;

  // 개인정보 필드 직접 관리 (새로 추가)
  final String? displayNameValue;
  final String? phoneNumberValue;
  final String? genderValue;
  final String? nameValue;
  final DateTime? birthDateValue;

  const SignUpState({
    this.userInfo,
    this.password,
    this.agreeTerms1 = false,
    this.agreeTerms2 = false,
    this.agreeMarketing = false,
    this.isLoading = false,
    this.error,
    this.isSuccess = false,
    this.passwordConfirmed = false,
    this.emailValue,
    this.displayNameValue,
    this.phoneNumberValue,
    this.genderValue,
    this.nameValue,
    this.birthDateValue,
  });

  // 편의성을 위한 getter 메서드들
  String? get email => emailValue ?? userInfo?.email;
  String? get displayName => displayNameValue ?? userInfo?.displayName;
  String? get phoneNumber => phoneNumberValue ?? userInfo?.phoneNumber;
  String? get gender => genderValue ?? userInfo?.gender;
  String? get name => nameValue ?? userInfo?.name;
  // DateTime? get birthDate => birthDateValue ?? userInfo?.birthday;

  bool get isStep1Valid => agreeTerms1 && agreeTerms2;

  bool get isStep2Valid {
    // 이메일 정규식을 조금 덜 엄격하게 변경
    final emailRegex = RegExp(r'^[^@]+@[^@]+\.[^@]+$');

    // 비밀번호 정규식을 조금 덜 엄격하게 변경 (8자 이상만 요구)
    final passwordRegex = RegExp(r'.{8,}');

    final emailValid = email != null && emailRegex.hasMatch(email!);
    final passwordValid = password != null && passwordRegex.hasMatch(password!);

    return emailValid && passwordValid && passwordConfirmed;
  }

  bool get isStep3Valid {
    final displayNameValid = displayName != null && displayName!.isNotEmpty;
    final phoneNumberValid = phoneNumber != null && phoneNumber!.isNotEmpty;
    final genderValid = gender != null && gender!.isNotEmpty;
    final nameValid = name != null && name!.isNotEmpty;
    return displayNameValid && phoneNumberValid && genderValid && nameValid;
  }

  SignUpState copyWith({
    CreateUser? userInfo,
    String? password,
    bool? isLoading,
    String? error,
    bool? isSuccess,
    // 기존 필드에 대한 개별 업데이트를 위한 매개변수
    bool? agreeTerms1,
    bool? agreeTerms2,
    bool? agreeMarketing,
    String? email,
    String? displayName,
    String? phoneNumber,
    String? gender,
    String? name,
    bool? passwordConfirmed,
    DateTime? birthDate,
  }) {
    // 이메일 값을 직접 업데이트 (userInfo와 별도로)
    final updatedEmail = email ?? emailValue;

    // 개인정보 값들을 직접 업데이트
    final updatedDisplayName = displayName ?? displayNameValue;
    final updatedPhoneNumber = phoneNumber ?? phoneNumberValue;
    final updatedGender = gender ?? genderValue;
    final updatedName = name ?? nameValue;
    final updatedBirthDate = birthDate ?? birthDateValue;

    // 사용자 정보 업데이트 로직
    CreateUser? updatedUserInfo = userInfo;

    // 이메일과 스텝3 정보가 모두 있으면 userInfo 생성 또는 업데이트
    final hasEmail = updatedEmail != null;
    final hasStep3Info = updatedDisplayName != null &&
        updatedPhoneNumber != null &&
        updatedGender != null &&
        updatedName != null;

    // 최종 회원가입 제출 시 모든 필드가 갖춰진 userInfo 객체가 필요함
    if (email != null ||
        displayName != null ||
        phoneNumber != null ||
        gender != null ||
        name != null ||
        birthDate != null) {
      final updatedAgreeTerms1 = agreeTerms1 ?? this.agreeTerms1;
      final updatedAgreeTerms2 = agreeTerms2 ?? this.agreeTerms2;
      final updatedAgreeMarketing = agreeMarketing ?? this.agreeMarketing;

      // 모든 필수 정보가 있으면 userInfo 생성
      if (hasEmail && hasStep3Info) {
        updatedUserInfo = CreateUser(
          agreeTerms1: updatedAgreeTerms1,
          agreeTerms2: updatedAgreeTerms2,
          agreeMarketing: updatedAgreeMarketing,
          email: updatedEmail,
          displayName: updatedDisplayName,
          phoneNumber: updatedPhoneNumber,
          gender: updatedGender,
          name: updatedName,
          birthday: Formater.dateFormat(DateTime.now()), // 기본값으로 현재 날짜 사용
        );
      }
      // 기존 userInfo가 있는 경우 업데이트
      else if (updatedUserInfo != null) {
        updatedUserInfo = CreateUser(
          agreeTerms1: updatedAgreeTerms1,
          agreeTerms2: updatedAgreeTerms2,
          agreeMarketing: updatedAgreeMarketing,
          email: email ?? updatedUserInfo.email,
          displayName: displayName ?? updatedUserInfo.displayName,
          phoneNumber: phoneNumber ?? updatedUserInfo.phoneNumber,
          gender: gender ?? updatedUserInfo.gender,
          name: name ?? updatedUserInfo.name,
          birthday: Formater.dateFormat(
              birthDate ?? DateTime.now()), // 기본값으로 현재 날짜 사용
        );
      }
    }

    return SignUpState(
      userInfo: updatedUserInfo,
      password: password ?? this.password,
      agreeTerms1: agreeTerms1 ?? this.agreeTerms1,
      agreeTerms2: agreeTerms2 ?? this.agreeTerms2,
      agreeMarketing: agreeMarketing ?? this.agreeMarketing,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      isSuccess: isSuccess ?? this.isSuccess,
      passwordConfirmed: passwordConfirmed ?? this.passwordConfirmed,
      emailValue: updatedEmail,
      displayNameValue: updatedDisplayName,
      phoneNumberValue: updatedPhoneNumber,
      genderValue: updatedGender,
      nameValue: updatedName,
      birthDateValue: updatedBirthDate,
    );
  }
}
