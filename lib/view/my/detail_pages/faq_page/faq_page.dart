import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'faq_scaffold.dart';
part 'faq_list.dart';

class FaqPage extends StatelessWidget {
  const FaqPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '자주 묻는 질문', showCarts: true),
      list: _List(),
    );
  }
}
