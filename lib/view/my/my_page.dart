import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:mayo_flutter/view/my/detail_pages/announcement_page/announcement_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/costomer_center_page/costomer_center_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/event_page/event_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/faq_page/faq_page.dart';
import 'package:mayo_flutter/view/my/detail_pages/profile_page/profile_page.dart';

part 'my_scaffold.dart';
part 'my_header.dart';
part 'my_middle.dart';

class MyPage extends StatelessWidget {
  const MyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '마이페이지', showCarts: true),
      header: _MyHeader(inLogged: true,),
      middle: _MyMiddle(),
    );
  }
}
