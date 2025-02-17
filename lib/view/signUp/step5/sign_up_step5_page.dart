import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'sign_up_scaffold.dart';
part 'sign_up_header.dart';
part 'sign_up_decoration.dart';

class SignUpStep5Page extends StatelessWidget {
  const SignUpStep5Page({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '회원가입', showCarts: false),
      header: _SignUpHeader(),
      decoration: _SignUpDecoration(),
      submitButton: Button(
        text: '마요 시작하기',
        onTap: () {},
        submit: true,
      ),
    );
  }
}
