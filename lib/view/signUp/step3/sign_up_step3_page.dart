import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/bloc/login/login_bloc.dart';
import 'package:mayo_flutter/bloc/sign_up/sign_up_bloc.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/view/components/button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';

part 'sign_up_scaffold.dart';
part 'sign_up_header.dart';
part 'sign_up_middle.dart';
part 'sign_up_form.dart';

class SignUpStep3Page extends StatelessWidget {
  const SignUpStep3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginBloc, LoginState>(
      builder: (context, loginState) {
        return BlocBuilder<SignUpBloc, SignUpState>(
          builder: (context, state) {
            return _Scaffold(
              topBar: Topbar(title: '회원가입3', showCarts: false),
              header: _SignUpHeader(),
              middle: _SignUpForm(),
              nextButton: Button(
                text: '가입하기',
                onTap: state.isStep3Valid
                    ? () async {
                        context.read<SignUpBloc>().add(SubmitSignUp());
                        context.read<LoginBloc>().add(UserLoginEvent());
                        if (!state.isLoading && state.error == null) {
                          context.go('/signup/step5');
                        } else if (state.error != null) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(state.error!),
                              backgroundColor:
                                  GlobalMainColor.globalPrimaryRedColor,
                            ),
                          );
                        }
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

Future<String?> getFcmToken() async {
  return await FirebaseMessaging.instance.getToken();
}
