import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'sign_up_scaffold.dart';
part 'sign_up_header.dart';
part 'sign_up_form.dart';

class SignUpStep3Page extends StatelessWidget {
  const SignUpStep3Page({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '회원가입', showCarts: false),
      header: _SignUpHeader(),
      form: _SignUpForm(),
      successButton: Button(
        text: '완료',
        onTap: () {},
      ),
    );
  }
}
