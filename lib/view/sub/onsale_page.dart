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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Topbar(title: "전체", showCarts: true),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("오늘은 뭘 먹을까?", style: AppTextStyle.heading2Bold),
                    Text("지금 업데이트된 우리 동네 마감 할인 정보",
                        style: AppTextStyle.body1Medium
                            .copyWith(color: GlobalMainGrey.grey700)),
                  ],
                ),
              ),
              //7
              OneProductWidget(
                storeIndex: 0,
              ),
              OneProductWidget(
                storeIndex: 4,
              ),
              OneProductWidget(
                storeIndex: 5,
              ),
              OneProductWidget(
                storeIndex: 6,
              ),
              OneProductWidget(
                storeIndex: 7,
              ),
              OneProductWidget(
                storeIndex: 8,
              ),
              OneProductWidget(
                storeIndex: 9,
              ),
              OneProductWidget(
                storeIndex: 10,
              ),
              OneProductWidget(
                storeIndex: 11,
              ),
              OneProductWidget(
                storeIndex: 12,
              ),
              OneProductWidget(
                storeIndex: 13,
              ),
              // OneProductWidget(
              //   storeIndex: 14,
              // ),
              // OneProductWidget(
              //   storeIndex: 15,
              // ),
              // OneProductWidget(
              //   storeIndex: 16,
              // ),
              // OneProductWidget(
              //   storeIndex: 17,
              // ),
              // OneProductWidget(
              //   storeIndex: 2,
              // ),
              // OneProductWidget(
              //   storeIndex: 1,
              // ),
              // OneProductWidget(
              //   storeIndex: 3,
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
