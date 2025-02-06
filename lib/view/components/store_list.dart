import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';

class StoreList extends StatelessWidget {
  const StoreList({
    super.key,
    this.showStoreList = true,
    required this.showPackagingBox,
    required this.showStoreBox,
  });
  factory StoreList.notShowList() {
    return StoreList(
        showStoreList: false, showPackagingBox: false, showStoreBox: false);
  }
  final bool showStoreList;
  final bool showPackagingBox;
  final bool showStoreBox;

  @override
  Widget build(BuildContext context) {
    return showStoreList
        ? Column(
            children: [
              Container(
                padding: EdgeInsets.only(
                  left: 24,
                  right: 24,
                  top: 21,
                  bottom: 15,
                ),
                width: double.infinity,
                height: 250.h,
                child: Column(
                  children: [
                    Image.asset('assets/icons/store_banner_food.png'),
                    SizedBox(height: 13.5.h),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '힘쎈드위치',
                              style: AppTextStyle.body1Bold.copyWith(
                                color: GlobalMainColor.globalPrimaryBlackColor,
                                letterSpacing: -0.32,
                              ),
                            ),
                            Row(
                              children: [
                                Container(
                                  padding: EdgeInsets.all(4.58),
                                  width: 22,
                                  height: 22,
                                  child: SvgPicture.asset(
                                      'assets/icons/navigation.svg'),
                                ),
                                Text(
                                  '광주광역시 동구 필문대로273번길 4',
                                  style: AppTextStyle.body2Medium,
                                ),
                              ],
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              children: [
                                showPackagingBox
                                    ? Container(
                                        margin: EdgeInsets.only(right: 5),
                                        width: 36.w,
                                        height: 18.h,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(30)),
                                          color: Color(0xFFFFC600),
                                        ),
                                        child: Text(
                                          '포장',
                                          style: AppTextStyle.captionMedium
                                              .copyWith(
                                            color: GlobalMainColor
                                                .globalPrimaryBlackColor,
                                            letterSpacing: -0.24,
                                          ),
                                        ),
                                      )
                                    : SizedBox(),
                                showStoreBox
                                    ? Container(
                                        margin: EdgeInsets.only(right: 5),
                                        width: 36.w,
                                        height: 18.h,
                                        alignment: Alignment.center,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                            side: BorderSide(
                                              width: 1,
                                              color: Color(0xFFFFC600),
                                            ),
                                          ),
                                        ),
                                        child: Text(
                                          '매장',
                                          style: AppTextStyle.captionMedium
                                              .copyWith(
                                            color: GlobalMainColor
                                                .globalPrimaryBlackColor,
                                            letterSpacing: -0.24,
                                          ),
                                        ),
                                      )
                                    : SizedBox(),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(width: 30.w),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            width: 67,
                            height: 67,
                            decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                                side: BorderSide(
                                  width: 1,
                                  color: GlobalMainGrey.grey200,
                                ),
                              ),
                              color: GlobalMainYellow.yellow200,
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(6.88),
                                  child:
                                      SvgPicture.asset('assets/icons/bell.svg'),
                                ),
                                Text(
                                  '예약하기',
                                  style: AppTextStyle.captionMedium.copyWith(
                                    color: Colors.white,
                                    letterSpacing: -0.24,
                                  ),
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
              Container(
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 1,
                      color: GlobalMainGrey.grey200,
                    ),
                  ),
                ),
              ),
            ],
          )
        : Column(
            children: [
              SizedBox(height: 161.h),
              SvgPicture.asset('assets/icons/bread.svg'),
              SizedBox(height: 17.h),
              Text(
                '지금 할인 중 빵 개',
                style: AppTextStyle.heading2Bold.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.48,
                ),
              ),
              SizedBox(height: 22.h),
              Text(
                '현재 마감할인 중인 상품이 없습니다.',
                style: AppTextStyle.body1Medium
                    .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
              ),
            ],
          );
  }
}
