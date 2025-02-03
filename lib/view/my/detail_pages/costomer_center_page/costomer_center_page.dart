import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'costomer_center_scaffold.dart';
part 'costomer_center_main.dart';

class CostomerCenterPage extends StatelessWidget {
  const CostomerCenterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '고객센터', showCarts: true),
      main: _Main(),
    );
  }
}
