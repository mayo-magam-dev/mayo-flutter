import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/store/read_simple_store_response.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

class PartnerStorePage extends StatelessWidget {
  PartnerStorePage({super.key});

  final Future<List<ReadSimpleStoreResponse>> partnerStoreData =
      StoreDataSource().getPartnerStores();

  Widget storeList() {
    return FutureBuilder(
      future: partnerStoreData,
      builder: (context, snapshot) {
        if (snapshot.hasData == false) {
          return SizedBox();
        }
        return Expanded(
          child: ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return partnerStore(
                index,
                snapshot.data,
                context,
              );
            },
          ),
        );
      },
    );
  }

  Widget partnerStore(int storeIndex, List<ReadSimpleStoreResponse>? storeData,
      BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 8.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.symmetric(vertical: 21.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      color: GlobalMainGrey.grey200,
                      width: 1,
                    ),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.network(
                      storeData![storeIndex].storeImage,
                      width: 342.w,
                      height: 123.h,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        storeData![storeIndex].storeName,
                        style: AppTextStyle.body1Bold,
                      ),
                      SizedBox(
                        height: 11.h,
                      ),
                      Text(
                        storeData[storeIndex].address,
                        style: AppTextStyle.body2Medium,
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      context.push('/store/${storeData[storeIndex].id}');
                    },
                    child: Container(
                      width: 67.w,
                      height: 67.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: GlobalMainColor.globalButtonColor,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            "assets/icons/time.svg",
                            colorFilter:
                                ColorFilter.mode(Colors.white, BlendMode.srcIn),
                            width: 33.w,
                            height: 33.h,
                          ),
                          Text(
                            "예약하기",
                            style: AppTextStyle.captionMedium
                                .copyWith(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Divider(
          color: GlobalMainGrey.grey200,
          thickness: 2,
        ),
      ],
    );
  }

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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("오늘은 뭘 먹을까?", style: AppTextStyle.heading2Bold),
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
                ],
              ),
            ),
            storeList(),
          ],
        ),
      ),
    );
  }
}
