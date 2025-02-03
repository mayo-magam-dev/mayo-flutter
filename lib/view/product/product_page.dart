import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/press_button.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'prouduct_scaffold.dart';
part 'product_info.dart';
part 'product_bottom_sheet.dart';

class ProuductPage extends StatelessWidget {
  const ProuductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: "상품 정보",
        showCarts: true,
      ),
      infoImage: Image.asset(
        "assets/images/store_product_info_example.png",
        fit: BoxFit.cover,
        height: 245.h,
        width: 390.w,
      ),
      infoText: _ProductInfo(),
      infoButton: PressButton(
          text: "예약하기",
          onPressed: () => showModalBottomSheet(
              barrierColor: Colors.transparent,
              context: context,
              builder: (context) {
                return _BottomSheet();
              })),
    );
  }
}
