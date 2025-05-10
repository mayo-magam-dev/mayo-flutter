import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/model/user/local_login_state.dart';

// 이벤트 정의
abstract class LoginEvent {}

class CheckLoginStatusEvent extends LoginEvent {}

class UserLoginEvent extends LoginEvent {}

class UserLogoutEvent extends LoginEvent {}

class UserAccountDelete extends LoginEvent {}

class SocialLoginEvent extends LoginEvent {
  final String email;
  final String provider;

  SocialLoginEvent({required this.email, required this.provider});
}

// 상태 정의
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginStateChanged extends LoginState {
  final LocalLoginState loginState;
  final String? email;
  final String? provider;

  LoginStateChanged(this.loginState, {this.email, this.provider});
}

// BLoC 클래스 정의
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserDataSource dataSource = UserDataSource();

  LoginBloc() : super(LoginInitial()) {
    on<CheckLoginStatusEvent>(_onCheckLoginStatus);
    on<UserLoginEvent>(_onUserLogin);
    on<UserLogoutEvent>(_onUserLogout);
    on<UserAccountDelete>(_onAccountDelete);
    on<SocialLoginEvent>(_onSocialLogin);
  }

  void _onCheckLoginStatus(
      CheckLoginStatusEvent event, Emitter<LoginState> emit) async {
    try {
      await dataSource.getUser();
      emit(LoginStateChanged(LocalLoginState.login));
    } on DioException catch (e) {
      if (e.response?.statusCode != 200) {
        emit(LoginStateChanged(LocalLoginState.needRegister));
      } else {
        emit(LoginStateChanged(LocalLoginState.notLogin));
      }
    } catch (e) {
      emit(LoginStateChanged(LocalLoginState.notLogin));
    }
  }

  void _onUserLogin(UserLoginEvent event, Emitter<LoginState> emit) {
    emit(LoginStateChanged(LocalLoginState.login));
  }

  void _onUserLogout(UserLogoutEvent event, Emitter<LoginState> emit) {
    emit(LoginStateChanged(LocalLoginState.notLogin));
  }

  void _onAccountDelete(UserAccountDelete event, Emitter<LoginState> emit) {
    emit(LoginStateChanged(LocalLoginState.needJoin));
  }

  void _onSocialLogin(SocialLoginEvent event, Emitter<LoginState> emit) {
    emit(LoginStateChanged(LocalLoginState.needRegister,
        email: event.email, provider: event.provider));
  }
}
