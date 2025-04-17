import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/store/read_simple_store_response.dart';

class OneProductWidget extends StatelessWidget {
  const OneProductWidget({
    super.key,
    required this.storeIndex,
    required this.storeData,
  });

  final int storeIndex;
  final List<ReadSimpleStoreResponse>? storeData;

  void sort() {
    storeData!.sort(
      (a, b) => a.storeName.compareTo(b.storeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    sort();
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.only(
                  left: 24.w, right: 24.w, top: 21.h, bottom: 15.h),
              width: double.infinity,
              height: 238.h,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: double.infinity,
                    height: 123.h,
                    margin: EdgeInsets.only(bottom: 11.5.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(storeData![storeIndex].storeImage),
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
                          Row(
                            children: [
                              SvgPicture.asset(
                                "assets/icons/location-with-ground.svg",
                                width: 18,
                                height: 18,
                              ),
                              SizedBox(
                                width: 3.w,
                              ),
                              Text(
                                storeData![storeIndex].address,
                                style: AppTextStyle.body2Medium,
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                            ],
                          ),
                          SizedBox(height: 5.h),
                          Row(
                            children: [
                              (storeData![storeIndex].storeSellingType == 3)
                                  ? Row(
                                      children: [
                                        Container(
                                            width: 36.w,
                                            height: 18.h,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: GlobalMainColor
                                                  .globalButtonColor,
                                            ),
                                            alignment: Alignment.center,
                                            child: Text("포장",
                                                style: AppTextStyle
                                                    .captionMedium)),
                                        SizedBox(width: 5.w),
                                        Container(
                                          width: 36.w,
                                          height: 18.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: GlobalMainColor
                                                    .globalButtonColor),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text("매장",
                                              style:
                                                  AppTextStyle.captionMedium),
                                        ),
                                      ],
                                    )
                                  : (storeData![storeIndex].storeSellingType ==
                                          1)
                                      ? Container(
                                          width: 36.w,
                                          height: 18.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            color: GlobalMainColor
                                                .globalButtonColor,
                                          ),
                                          alignment: Alignment.center,
                                          child: Text("포장",
                                              style:
                                                  AppTextStyle.captionMedium))
                                      : Container(
                                          width: 36.w,
                                          height: 18.h,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                            border: Border.all(
                                                color: GlobalMainColor
                                                    .globalButtonColor),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text("매장",
                                              style:
                                                  AppTextStyle.captionMedium),
                                        ),
                            ],
                          ),
                        ],
                      ),
                      GestureDetector(
                        onTap: () {
                          context.push('/store/${storeData![storeIndex].id}');
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
                                colorFilter: ColorFilter.mode(
                                    Colors.white, BlendMode.srcIn),
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
        ),
        (storeData![storeIndex].openState == true)
            ? SizedBox.shrink()
            : Container(
                width: double.infinity,
                height: 238.h,
                decoration: BoxDecoration(
                  color: Colors.black.withValues(alpha: 50),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset('assets/icons/vector.svg'),
                    Text(
                      '오픈 준비중',
                      style: AppTextStyle.heading2Bold.copyWith(
                        color: Colors.white,
                        letterSpacing: -0.48,
                      ),
                    ),
                  ],
                ),
              ),
      ],
    );
  }
}
