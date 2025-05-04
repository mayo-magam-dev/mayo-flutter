import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/bloc/sign_up/sign_up_bloc.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/view/components/button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/user/local_login_state.dart';

part 'sign_up_scaffold.dart';
part 'sign_up_header.dart';
part 'sign_up_middle.dart';

class SignUpStep2Page extends StatelessWidget {
  const SignUpStep2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, loginState) {
        // 소셜 로그인 여부 확인
        final isSocialLogin = loginState is LoginStateChanged && 
            loginState.provider != null && 
            loginState.provider != 'email';
        
        return BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            // 소셜 로그인인 경우 이메일과 비밀번호 자동 유효
            final isValid = isSocialLogin || state.isStep2Valid;

            // 소셜 로그인인 경우 비밀번호를 자동으로 생성하고 설정
            if (isSocialLogin && loginState is LoginStateChanged && loginState.email != null) {
              // 회원가입 블록에 이메일 설정 (이미 설정되어 있을 수 있지만 확인차 설정)
              context.read<SignUpBloc>().add(SetEmail(loginState.email!));
              
              // 랜덤 비밀번호를 생성해서 설정 (실제 소셜 로그인에서는 사용되지 않음)
              final randomPassword = '${DateTime.now().millisecondsSinceEpoch}';
              context.read<SignUpBloc>().add(SetPassword(randomPassword));
              context.read<SignUpBloc>().add(SetPasswordConfirmation(true));
            }

            return _Scaffold(
              topBar: Topbar(title: '회원가입2', showCarts: false),
              header: _SignUpHeader(),
              middle: Column(
                children: [
                  if (isSocialLogin && loginState is LoginStateChanged)
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '소셜 로그인으로 가입',
                            style: AppTextStyle.heading2Bold.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '${loginState.provider == 'google' ? 'Google' : 'Apple'} 계정으로 로그인합니다.',
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainGrey.grey500,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            '이메일: ${loginState.email ?? ""}',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainGrey.grey400,
                            ),
                          ),
                        ],
                      ),
                    )
                  else
                    _SignUpMiddle(),
                ],
              ),
              nextButton: Button(
                text: '다음',
                onTap: isValid
                    ? () {
                        context.push('/signup/step3');
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
