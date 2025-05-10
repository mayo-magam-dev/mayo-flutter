import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/bloc/sign_up/sign_up_bloc.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

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

class _SignUpStep1View extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, loginState) {
        final isSocialLogin = loginState is LoginStateChanged &&
            loginState.provider != null &&
            loginState.provider != 'email';

        return BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            return _Scaffold(
              topBar: Topbar(title: '회원가입', showCarts: false),
              header: _SignUpHeader(),
              middle: _SignUpMiddle(),
              nextButton: Button(
                text: '다음',
                onTap: state.isStep1Valid
                    ? () {
                        context.push(isSocialLogin ? '/signup/step3' : '/signup/step2');
                      }
                    : null,
              ),
            );
          },
        );
      },
    );
  }
}
