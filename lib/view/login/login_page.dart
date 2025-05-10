import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/bloc/sign_up/sign_up_bloc.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/user/local_login_state.dart';
import 'package:mayo_flutter/router/router.dart' as app_router;
import 'package:mayo_flutter/util/fcm.dart';
import 'package:mayo_flutter/view/login/google_login.dart';

part 'login_scaffold.dart';
part 'login_logo.dart';
part 'login_form.dart';
part 'login_social_login.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
    // 로그인 상태 확인
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.read<LoginBloc>().add(CheckLoginStatusEvent());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: app_router.signUpBloc,
      child: BlocListener<LoginBloc, LoginState>(
        listener: (context, state) {
          if (state is LoginStateChanged) {
            if (state.loginState == LocalLoginState.login) {
              // 이미 로그인되어 있으면 홈페이지로 이동
              context.go('/');
            }
          }
        },
        child: _Scaffold(
          logo: _LoginLogo(),
          form: _LoginForm(),
          socialLogin: _LoginSocialLogin(),
        ),
      ),
    );
  }
}
