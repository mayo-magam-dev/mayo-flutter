import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/view/login/login_page.dart';

part 'account_delete_scaffold.dart';
part 'account_delete_main.dart';

class AccountDeletePage extends StatelessWidget {
  const AccountDeletePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '회원 탈퇴', showCarts: false),
      main: _Main(),
    );
  }
}
