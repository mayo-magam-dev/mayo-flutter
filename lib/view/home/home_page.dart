import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/bottom_bar.dart';
import 'package:mayo_flutter/view/components/category_buttons.dart';
import 'package:mayo_flutter/view/components/store_info_bar.dart';

part 'home_scaffold.dart';
part 'home_header.dart';
part 'home_middle.dart';
part 'home_bottom.dart';
part 'home_top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: _HomeTopBar(),
      header: _HomeHeader(),
      middle: _HomeMiddle(),
      bottom: _HomeBottom(),
      bottomBar: BottomBar(index: 0),
    );
  }
}
