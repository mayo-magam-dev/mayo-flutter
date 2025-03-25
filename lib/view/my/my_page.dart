import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'my_scaffold.dart';
part 'my_header.dart';
part 'my_middle.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '마이페이지', showCarts: true),
      header: _MyHeader(
        inLogged: true,
      ),
      middle: _MyMiddle(),
    );
  }
}
