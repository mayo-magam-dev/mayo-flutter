import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
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

class SignUpStep2Page extends ConsumerWidget {
  const SignUpStep2Page({super.key});

  Future<void> _handleNextButton(BuildContext context, WidgetRef ref,
      LoginState loginState, SignUpState state) async {
    final isSocialLogin = loginState is LoginStateChanged &&
        loginState.provider != null &&
        loginState.provider != 'email';

    if (isSocialLogin) {
      context.push(AppRoutes.signupStep3);
      return;
    }

    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: state.email ?? '',
        password: state.password ?? '',
      );

      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: state.email ?? '',
        password: state.password ?? '',
      );

      context.push(AppRoutes.signupStep3);
    } on FirebaseAuthException catch (e) {
      String errorMessage = '계정 생성에 실패했습니다.';

      if (e.code == 'weak-password') {
        errorMessage = '비밀번호가 너무 약합니다.';
      } else if (e.code == 'email-already-in-use') {
        errorMessage = '이미 사용 중인 이메일입니다.';
      } else if (e.code == 'invalid-email') {
        errorMessage = '유효하지 않은 이메일 형식입니다.';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          backgroundColor: GlobalMainColor.globalPrimaryRedColor,
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('계정 생성 중 오류가 발생했습니다: $e'),
          backgroundColor: GlobalMainColor.globalPrimaryRedColor,
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginNotifierProvider);
    final isSocialLogin = loginState is LoginStateChanged &&
        loginState.provider != null &&
        loginState.provider != 'email';

    final state = ref.watch(signUpNotifierProvider);
    final isValid = isSocialLogin || state.currentStep == 2;

    return _Scaffold(
      topBar: Topbar(title: '회원가입2', showCarts: false),
      header: _SignUpHeader(),
      middle: _SignUpMiddle(),
      nextButton: Button(
        text: '다음',
        onTap: isValid
            ? () => _handleNextButton(context, ref, loginState, state)
            : null,
      ),
    );
  }
}
