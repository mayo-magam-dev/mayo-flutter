import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'prouduct_scaffold.dart';

class ProuductPage extends StatelessWidget {
  const ProuductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: "가게 정보",
        showCarts: true,
      ),
      infoImage: Image.asset(
        "assets/images/store_product_banner_example.png",
        fit: BoxFit.cover,
        height: 245.h,
        width: 390.w,
      ),
      infoText: Text(""),
      infoButton: Text(""),
    );
  }
}
