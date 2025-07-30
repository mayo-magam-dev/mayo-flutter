import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'sign_up_provider.g.dart';

@riverpod
class SignUpNotifier extends _$SignUpNotifier {
  @override
  SignUpState build() {
    return const SignUpState();
  }

  void updateStep(int step) {
    state = state.copyWith(currentStep: step);
  }

  void updateName(String name) {
    state = state.copyWith(name: name);
  }

  void updateDisplayName(String displayName) {
    state = state.copyWith(displayName: displayName);
  }

  void updateBirth(String birth) {
    state = state.copyWith(birth: birth);
  }

  void updatePhone(String phone) {
    state = state.copyWith(phone: phone);
  }

  void updateEmail(String email) {
    state = state.copyWith(email: email);
  }

  void updatePassword(String password) {
    state = state.copyWith(password: password);
  }

  void updateProvider(String provider) {
    state = state.copyWith(provider: provider);
  }

  void updateAgreeTerms1(bool value) {
    state = state.copyWith(agreeTerms1: value);
  }

  void updateAgreeTerms2(bool value) {
    state = state.copyWith(agreeTerms2: value);
  }

  void updateAgreeMarketing(bool value) {
    state = state.copyWith(agreeMarketing: value);
  }

  void updateAllAgreements(bool value) {
    state = state.copyWith(
      agreeTerms1: value,
      agreeTerms2: value,
      agreeMarketing: value,
    );
  }

  void updateGender(String gender) {
    state = state.copyWith(gender: gender);
  }

  void submitSignUp() {
    // 회원가입 로직 구현
    // 여기서 실제 API 호출 등을 수행
  }

  void reset() {
    state = const SignUpState();
  }
}

class SignUpState {
  final int currentStep;
  final String name;
  final String displayName;
  final String birth;
  final String phone;
  final String email;
  final String password;
  final String provider;
  final bool agreeTerms1;
  final bool agreeTerms2;
  final bool agreeMarketing;
  final String gender;

  const SignUpState({
    this.currentStep = 1,
    this.name = '',
    this.displayName = '',
    this.birth = '',
    this.phone = '',
    this.email = '',
    this.password = '',
    this.provider = '',
    this.agreeTerms1 = false,
    this.agreeTerms2 = false,
    this.agreeMarketing = false,
    this.gender = '',
  });

  SignUpState copyWith({
    int? currentStep,
    String? name,
    String? displayName,
    String? birth,
    String? phone,
    String? email,
    String? password,
    String? provider,
    bool? agreeTerms1,
    bool? agreeTerms2,
    bool? agreeMarketing,
    String? gender,
  }) {
    return SignUpState(
      currentStep: currentStep ?? this.currentStep,
      name: name ?? this.name,
      displayName: displayName ?? this.displayName,
      birth: birth ?? this.birth,
      phone: phone ?? this.phone,
      email: email ?? this.email,
      password: password ?? this.password,
      provider: provider ?? this.provider,
      agreeTerms1: agreeTerms1 ?? this.agreeTerms1,
      agreeTerms2: agreeTerms2 ?? this.agreeTerms2,
      agreeMarketing: agreeMarketing ?? this.agreeMarketing,
      gender: gender ?? this.gender,
    );
  }
}
