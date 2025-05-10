part of 'sign_up_bloc.dart';

abstract class SignUpEvent {}

class SetTermsAgreement extends SignUpEvent {
  final bool value;
  SetTermsAgreement(this.value);
}

class SetPrivacyAgreement extends SignUpEvent {
  final bool value;
  SetPrivacyAgreement(this.value);
}

class SetMarketingAgreement extends SignUpEvent {
  final bool value;
  SetMarketingAgreement(this.value);
}

class SetAllAgreements extends SignUpEvent {
  final bool value;
  SetAllAgreements(this.value);
}

class SetEmail extends SignUpEvent {
  final String email;
  SetEmail(this.email);
}

class SetPassword extends SignUpEvent {
  final String password;
  SetPassword(this.password);
}

class SetPasswordConfirmation extends SignUpEvent {
  final bool passwordsMatch;
  SetPasswordConfirmation(this.passwordsMatch);
}

class SetDisplayName extends SignUpEvent {
  final String displayName;
  SetDisplayName(this.displayName);
}

class SetPhoneNumber extends SignUpEvent {
  final String phoneNumber;
  SetPhoneNumber(this.phoneNumber);
}

class SetGender extends SignUpEvent {
  final String gender;
  SetGender(this.gender);
}

class SetName extends SignUpEvent {
  final String name;
  SetName(this.name);
}

class SetBirthDate extends SignUpEvent {
  final DateTime birthDate;

  SetBirthDate(this.birthDate);
}

class SubmitSignUp extends SignUpEvent {}

class DeleteData extends SignUpEvent {}
