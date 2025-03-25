import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/bloc/sign_up/sign_up_bloc.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/view/components/button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';

part 'sign_up_scaffold.dart';
part 'sign_up_header.dart';
part 'sign_up_middle.dart';

class SignUpStep2Page extends StatelessWidget {
  const SignUpStep2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        final isValid = state.isStep2Valid;
        
        return _Scaffold(
          topBar: Topbar(title: '회원가입2', showCarts: false),
          header: _SignUpHeader(),
          middle: Column(
            children: [
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
  }
}
