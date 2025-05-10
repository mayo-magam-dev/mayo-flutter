import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/model/user/create_user.dart';
import 'package:mayo_flutter/util/formater.dart';

part 'sign_up_event.dart';
part 'sign_up_state.dart';

class SignUpBloc extends Bloc<SignUpEvent, SignUpState> {
  final UserDataSource _userDataSource;

  SignUpBloc({required UserDataSource userDataSource})
      : _userDataSource = userDataSource,
        super(SignUpState()) {
    on<SetTermsAgreement>(_onSetTermsAgreement);
    on<SetPrivacyAgreement>(_onSetPrivacyAgreement);
    on<SetMarketingAgreement>(_onSetMarketingAgreement);
    on<SetAllAgreements>(_onSetAllAgreements);
    on<SetEmail>(_onSetEmail);
    on<SetPassword>(_onSetPassword);
    on<SetPasswordConfirmation>(_onSetPasswordConfirmation);
    on<SetDisplayName>(_onSetDisplayName);
    on<SetPhoneNumber>(_onSetPhoneNumber);
    on<SetGender>(_onSetGender);
    on<SetName>(_onSetName);
    on<SetBirthDate>(_onSetBirthDate);
    on<SubmitSignUp>(_onSubmitSignUp);
    on<DeleteData>(_onDeleteData);
  }

  void _onSetTermsAgreement(
      SetTermsAgreement event, Emitter<SignUpState> emit) {
    emit(state.copyWith(agreeTerms1: event.value));
  }

  void _onSetPrivacyAgreement(
      SetPrivacyAgreement event, Emitter<SignUpState> emit) {
    emit(state.copyWith(agreeTerms2: event.value));
  }

  void _onSetMarketingAgreement(
      SetMarketingAgreement event, Emitter<SignUpState> emit) {
    emit(state.copyWith(agreeMarketing: event.value));
  }

  void _onSetAllAgreements(SetAllAgreements event, Emitter<SignUpState> emit) {
    emit(state.copyWith(
      agreeTerms1: event.value,
      agreeTerms2: event.value,
      agreeMarketing: event.value,
    ));
  }

  void _onSetEmail(SetEmail event, Emitter<SignUpState> emit) {
    emit(state.copyWith(email: event.email));
  }

  void _onSetPassword(SetPassword event, Emitter<SignUpState> emit) {
    emit(state.copyWith(password: event.password));
  }

  void _onSetPasswordConfirmation(
      SetPasswordConfirmation event, Emitter<SignUpState> emit) {
    emit(state.copyWith(passwordConfirmed: event.passwordsMatch));
  }

  void _onSetDisplayName(SetDisplayName event, Emitter<SignUpState> emit) {
    emit(state.copyWith(displayName: event.displayName));
  }

  void _onSetPhoneNumber(SetPhoneNumber event, Emitter<SignUpState> emit) {
    emit(state.copyWith(phoneNumber: event.phoneNumber));
  }

  void _onSetGender(SetGender event, Emitter<SignUpState> emit) {
    emit(state.copyWith(gender: event.gender));
  }

  void _onSetName(SetName event, Emitter<SignUpState> emit) {
    emit(state.copyWith(name: event.name));
  }

  void _onSetBirthDate(SetBirthDate event, Emitter<SignUpState> emit) {
    emit(state.copyWith(birthDate: event.birthDate));
  }

  void _onDeleteData(DeleteData event, Emitter<SignUpState> emit) {
    emit(
      state.copyWith(
        agreeMarketing: null,
        agreeTerms1: null,
        agreeTerms2: null,
        birthDate: null,
        displayName: null,
        email: null,
        error: null,
        gender: null,
        isLoading: null,
        isSuccess: null,
        name: null,
        password: null,
        passwordConfirmed: null,
        phoneNumber: null,
        userInfo: null,
      ),
    );
  }

  Future<void> _onSubmitSignUp(
      SubmitSignUp event, Emitter<SignUpState> emit) async {
    if (!state.isStep1Valid || !state.isStep2Valid || !state.isStep3Valid) {
      return;
    }

    try {
      emit(state.copyWith(isLoading: true, error: null));

      // userInfo가 null이면 모든 필수 정보를 사용하여 생성
      if (state.userInfo == null) {
        if (state.email != null &&
            state.displayName != null &&
            state.phoneNumber != null &&
            state.gender != null &&
            state.name != null) {
          final newUserInfo = CreateUser(
            email: state.email!,
            displayName: state.displayName!,
            phoneNumber: state.phoneNumber!,
            gender: state.gender!,
            name: state.name!,
            agreeTerms1: state.agreeTerms1,
            agreeTerms2: state.agreeTerms2,
            agreeMarketing: state.agreeMarketing,
            birthday: '20001010', // 임시값으로 현재 날짜 사용
          );

          await _userDataSource.createUser(createUser: newUserInfo);
          emit(state.copyWith(userInfo: newUserInfo, isSuccess: true));
        } else {
          throw Exception(
              '사용자 정보가 불완전합니다: email=${state.email}, name=${state.name}, displayName=${state.displayName}, phoneNumber=${state.phoneNumber}, gender=${state.gender}');
        }
      } else {
        await _userDataSource.createUser(createUser: state.userInfo!);
        emit(state.copyWith(isSuccess: true));
      }
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    } finally {
      emit(state.copyWith(isLoading: false));
    }
  }
}
