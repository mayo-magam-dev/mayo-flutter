import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/providers/login_provider.dart';
import 'package:mayo_flutter/providers/sign_up_provider.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/router/app_routes.dart';
import 'package:mayo_flutter/dataSource/board.dart';
import 'package:mayo_flutter/model/board/board.dart';

part 'sign_up_scaffold.dart';
part 'sign_up_header.dart';
part 'sign_up_middle.dart';

class SignUpStep1Page extends StatelessWidget {
  const SignUpStep1Page({super.key});

  @override
  Widget build(BuildContext context) {
    return _SignUpStep1View();
  }
}

class _SignUpStep1View extends ConsumerWidget {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginNotifierProvider);
    final isSocialLogin = loginState is LoginStateChanged &&
        loginState.provider != null &&
        loginState.provider != 'email';

    final state = ref.watch(signUpNotifierProvider);
    return _Scaffold(
      topBar: Topbar(title: '회원가입', showCarts: false),
      header: _SignUpHeader(),
      middle: _SignUpMiddle(),
      nextButton: Button(
        text: '다음',
        onTap: state.currentStep == 1
            ? () {
                context.push(isSocialLogin
                    ? AppRoutes.signupStep3
                    : AppRoutes.signupStep2);
              }
            : null,
      ),
    );
  }
}
