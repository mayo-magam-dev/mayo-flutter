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

  ReadSimpleStoreResponse get store => storeData![storeIndex];

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            Container(
              padding: EdgeInsets.fromLTRB(24.w, 21.h, 24.w, 15.h),
              width: double.infinity,
              //height: 238.h,
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
                        image: NetworkImage(store.storeImage),
                      ),
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // 왼쪽 텍스트 정보 (Expandable)
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              store.storeName,
                              style: AppTextStyle.body1Bold,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 5.h),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SvgPicture.asset(
                                  "assets/icons/location-with-ground.svg",
                                  width: 18,
                                  height: 18,
                                ),
                                SizedBox(width: 3.w),
                                Expanded(
                                  child: Text(
                                    store.address,
                                    style: AppTextStyle.body2Medium,
                                    maxLines: 1,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 4.5.h),
                            _buildTags(),
                            SizedBox(height: 12.h),
                          ],
                        ),
                      ),

                      SizedBox(width: 8.w),

                      GestureDetector(
                        onTap: () {
                          context.push('/store/${store.id}');
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
                                colorFilter: const ColorFilter.mode(
                                  Colors.white,
                                  BlendMode.srcIn,
                                ),
                                width: 33.w,
                                height: 33.h,
                              ),
                              Text(
                                "예약하기",
                                style: AppTextStyle.captionMedium.copyWith(
                                  color: Colors.white,
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
            Divider(color: GlobalMainGrey.grey200, thickness: 2),
          ],
        ),
        if (!store.openState)
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.6),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/vector.svg'),
                  SizedBox(height: 10.h),
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
          ),
      ],
    );
  }

  Widget _buildTags() {
    final type = store.storeSellingType;

    if (type == 3) {
      return Row(
        children: [
          _tag("포장", filled: true),
          SizedBox(width: 5.w),
          _tag("매장", filled: false),
        ],
      );
    }

    return _tag(type == 1 ? "포장" : "매장", filled: type == 1);
  }

  Widget _tag(String text, {required bool filled}) {
    return Container(
      width: 36.w,
      height: 18.h,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: filled ? GlobalMainColor.globalButtonColor : Colors.transparent,
        border: filled
            ? null
            : Border.all(color: GlobalMainColor.globalButtonColor),
      ),
      child: Text(text, style: AppTextStyle.captionMedium),
    );
  }
}
