import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/model/user/local_login_state.dart';

// 이벤트 정의
abstract class LoginEvent {}

class CheckLoginStatusEvent extends LoginEvent {}

class UserLoginEvent extends LoginEvent {}

class UserLogoutEvent extends LoginEvent {}

// 상태 정의
abstract class LoginState {}

class LoginInitial extends LoginState {}

class LoginStateChanged extends LoginState {
  final LocalLoginState loginState;

  LoginStateChanged(this.loginState);
}

// BLoC 클래스 정의
class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final UserDataSource dataSource = UserDataSource();

  LoginBloc() : super(LoginInitial()) {
    on<CheckLoginStatusEvent>(_onCheckLoginStatus);
    on<UserLoginEvent>(_onUserLogin);
    on<UserLogoutEvent>(_onUserLogout);
  }

  void _onCheckLoginStatus(
      CheckLoginStatusEvent event, Emitter<LoginState> emit) async {
    try {
      final result = await dataSource.getUser();
      emit(LoginStateChanged(result.uid.isNotEmpty
          ? LocalLoginState.login
          : LocalLoginState.needRegister));
    } on DioException {
      emit(LoginStateChanged(LocalLoginState.notLogin));
    }
  }

  void _onUserLogin(UserLoginEvent event, Emitter<LoginState> emit) {
    emit(LoginStateChanged(LocalLoginState.login));
  }

  void _onUserLogout(UserLogoutEvent event, Emitter<LoginState> emit) {
    emit(LoginStateChanged(LocalLoginState.notLogin));
  }
}