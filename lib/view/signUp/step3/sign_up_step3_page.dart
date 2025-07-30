import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/providers/login_provider.dart';
import 'package:mayo_flutter/providers/sign_up_provider.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/view/components/button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/router/app_routes.dart';

part 'sign_up_scaffold.dart';
part 'sign_up_header.dart';
part 'sign_up_middle.dart';
part 'sign_up_form.dart';

class SignUpStep3Page extends ConsumerStatefulWidget {
  const SignUpStep3Page({super.key});

  @override
  ConsumerState<SignUpStep3Page> createState() => _SignUpStep3PageState();
}

class _SignUpStep3PageState extends ConsumerState<SignUpStep3Page> {
  bool _isFormValid = false;

  void _onFormValidationChanged(bool isValid) {
    if (_isFormValid != isValid) {
      setState(() {
        _isFormValid = isValid;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final loginState = ref.watch(loginNotifierProvider);
    final state = ref.watch(signUpNotifierProvider);

    return _Scaffold(
      topBar: Topbar(title: '회원가입3', showCarts: false),
      header: _SignUpHeader(),
      middle: _SignUpForm(onValidationChanged: _onFormValidationChanged),
      nextButton: Button(
        text: '가입하기',
        onTap: _isFormValid
            ? () async {
                ref.read(signUpNotifierProvider.notifier).submitSignUp();
                ref.read(loginNotifierProvider.notifier).userLogin();
                context.go(AppRoutes.signupStep5);
              }
            : null,
      ),
    );
  }
}

Future<String?> getFcmToken() async {
  return await FirebaseMessaging.instance.getToken();
}
