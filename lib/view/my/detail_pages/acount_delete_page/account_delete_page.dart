import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

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
