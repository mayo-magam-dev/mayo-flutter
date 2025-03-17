import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/one_product.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

class OnsalePage extends StatelessWidget {
  const OnsalePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Topbar(title: "전체", showCarts: true),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("오늘은 뭘 먹을까?", style: AppTextStyle.heading2Bold),
              Text("지금 업데이트된 우리 동네 마감 할인 정보",
                  style: AppTextStyle.body1Medium
                      .copyWith(color: GlobalMainGrey.grey700)),
              OneProductWidget(),
            ]),
          ),
          Divider(
            color: GlobalMainGrey.grey200,
            thickness: 2,
          ),
        ],
      )),
    );
  }
}
