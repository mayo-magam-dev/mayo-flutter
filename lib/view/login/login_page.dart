import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/view/login/google_login.dart';

part 'login_scaffold.dart';
part 'login_logo.dart';
part 'login_form.dart';
part 'login_social_login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      logo: _LoginLogo(),
      form: _LoginForm(),
      socialLogin: _LoginSocialLogin(),
    );
  }
}
