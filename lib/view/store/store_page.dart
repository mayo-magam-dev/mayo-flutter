import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'store_scaffold.dart';
part 'store_info_header.dart';
part 'store_info_middle.dart';
part 'store_info_bottom.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: "가게 이름",
        showCarts: false,
      ),
      infoHeader: _StoreInfoHeader(),
      infoMiddle: _StoreInfoMiddle(),
      infoBottom: _StoreInfoBottom(),
    );
  }
}
