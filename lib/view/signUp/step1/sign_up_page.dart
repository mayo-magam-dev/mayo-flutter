import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part '../sign_up_scaffold.dart';
part 'sign_up_header.dart';
part 'sign_up_middle.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '회원가입', showCarts: false),
      header: _SignUpHeader(),
      middle: _SignUpMiddle(),
    );
  }
}
