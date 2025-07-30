import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/providers/login_provider.dart';
import 'package:mayo_flutter/providers/sign_up_provider.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/user/local_login_state.dart';
import 'package:mayo_flutter/router/router.dart' as app_router;
import 'package:mayo_flutter/util/fcm.dart';
import 'package:mayo_flutter/view/login/google_login.dart';
import 'package:mayo_flutter/router/app_routes.dart';

part 'login_scaffold.dart';
part 'login_logo.dart';
part 'login_form.dart';
part 'login_social_login.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<LoginState>(loginNotifierProvider, (previous, next) {
      if (next is LoginStateChanged &&
          next.loginState == LocalLoginState.login) {
        context.go(AppRoutes.home);
      }
    });

    return _Scaffold(
      logo: _LoginLogo(),
      form: _LoginForm(),
      socialLogin: _LoginSocialLogin(),
    );
  }
}
