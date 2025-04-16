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
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: double.infinity,
                height: 123.h,
                margin: EdgeInsets.symmetric(vertical: 21.h),
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
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          SvgPicture.asset("assets/icons/location.svg"),
                          SizedBox(
                            width: 3.w,
                          ),
                          Text(
                            storeData![storeIndex].address,
                            style: AppTextStyle.body2Medium,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5.h,
                      ),
                      Row(
                        children: [
                          (storeData![storeIndex].storeSellingType == 3)
                              ? Row(
                                  children: [
                                    Container(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 7.5.w),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          color:
                                              GlobalMainColor.globalButtonColor,
                                        ),
                                        child: Text("포장",
                                            style: AppTextStyle.captionMedium)),
                                    SizedBox(
                                      width: 5.w,
                                    ),
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7.5.w,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: GlobalMainColor
                                                .globalButtonColor),
                                      ),
                                      child: Text("매장",
                                          style: AppTextStyle.captionMedium),
                                    ),
                                  ],
                                )
                              : (storeData![storeIndex].storeSellingType == 1)
                                  ? Container(
                                      padding: EdgeInsets.symmetric(
                                        horizontal: 7.5.w,
                                      ),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color:
                                            GlobalMainColor.globalButtonColor,
                                      ),
                                      child: Text("포장",
                                          style: AppTextStyle.captionMedium))
                                  : Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7.5.w),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        border: Border.all(
                                            color: GlobalMainColor
                                                .globalButtonColor),
                                      ),
                                      child: Text("매장",
                                          style: AppTextStyle.captionMedium),
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
}
