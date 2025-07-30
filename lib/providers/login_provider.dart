import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/model/user/local_login_state.dart';

part 'login_provider.g.dart';

@riverpod
class LoginNotifier extends _$LoginNotifier {
  final UserDataSource dataSource = UserDataSource();

  @override
  LoginState build() {
    // Firebase Auth 상태 감지
    _listenToAuthChanges();
    return LoginInitial();
  }

  void _listenToAuthChanges() {
    FirebaseAuth.instance.authStateChanges().listen((user) async {
      if (user != null) {
        // Firebase에 로그인된 사용자가 있으면 서버에서 사용자 정보 확인
        await checkLoginStatus();
      } else {
        // Firebase에서 로그아웃된 경우
        state = LoginStateChanged(LocalLoginState.notLogin);
      }
    });
  }

  Future<void> checkLoginStatus() async {
    try {
      await dataSource.getUser();
      state = LoginStateChanged(LocalLoginState.login);
    } on DioException catch (e) {
      if (e.response?.statusCode == 401) {
        // 인증 실패 시 Firebase에서 로그아웃
        await FirebaseAuth.instance.signOut();
        state = LoginStateChanged(LocalLoginState.notLogin);
      } else if (e.response?.statusCode == 404) {
        // 사용자가 서버에 등록되지 않은 경우
        state = LoginStateChanged(LocalLoginState.needRegister);
      } else {
        state = LoginStateChanged(LocalLoginState.notLogin);
      }
    } catch (e) {
      state = LoginStateChanged(LocalLoginState.notLogin);
    }
  }

  void userLogin() {
    state = LoginStateChanged(LocalLoginState.login);
  }

  void userLogout() {
    state = LoginStateChanged(LocalLoginState.notLogin);
  }

  void accountDelete() {
    state = LoginStateChanged(LocalLoginState.needJoin);
  }

  void userAccountDelete() {
    state = LoginStateChanged(LocalLoginState.notLogin);
  }

  void socialLogin(String email, String provider) {
    state = LoginStateChanged(
      LocalLoginState.needRegister,
      email: email,
      provider: provider,
    );
  }
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
