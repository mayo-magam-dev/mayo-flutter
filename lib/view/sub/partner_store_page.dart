import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/one_product.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

class PartnerStorePage extends StatelessWidget {
  const PartnerStorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Topbar(title: "제휴 업체", showCarts: true),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text("오늘은 뭘 먹을까?", style: AppTextStyle.heading2Bold),
              // Text("지금 업데이트된 우리 동네 마감 할인 정보",
              //     style: AppTextStyle.body1Medium
              //         .copyWith(color: GlobalMainGrey.grey700)),
              RichText(
                text: TextSpan(
                  style: AppTextStyle.body1Medium
                      .copyWith(color: GlobalMainGrey.grey700),
                  children: [
                    TextSpan(
                      text: '제휴 업체는 마감할인 품목을 제공하지 않습니다\n',
                    ),
                    TextSpan(
                      text: "찜하기('하트')",
                      style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainColor.globalPrimaryRedColor),
                    ),
                    TextSpan(
                      text: ' 누른 화면을 사장님께 보여주시면\n',
                    ),
                    TextSpan(
                      text: "음료수",
                      style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainColor.globalPrimaryRedColor),
                    ),
                    TextSpan(
                      text: '를 증정해드립니다',
                    ),
                  ],
                ),
              ),
              OneProductWidget(storeIndex: 0,),
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
