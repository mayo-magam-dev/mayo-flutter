import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';

class OneProductWidget extends StatelessWidget {
  OneProductWidget({
    super.key,
    required this.storeIndex,
  });

  int storeIndex;

  var data = StoreDataSource().getAllStores();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: data,
      builder: (context, snapshot) {
        if (snapshot.hasData == false) {
          return Center(child: CircularProgressIndicator());
        }
        return Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 21.h),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      "assets/images/empty_cart.png",
                      width: 342.w,
                      height: 123.h,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            snapshot.data![storeIndex].storeName,
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
                              Text(snapshot.data![storeIndex].address,
                                  style: AppTextStyle.body2Medium),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Row(children: [
                            Container(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 7.5.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: GlobalMainColor.globalButtonColor,
                                ),
                                child: Text("포장",
                                    style: AppTextStyle.captionMedium)),
                            SizedBox(
                              width: 5.w,
                            ),
                            Container(
                                padding:
                                    EdgeInsets.symmetric(horizontal: 7.5.w),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  border: Border.all(
                                      color: GlobalMainColor.globalButtonColor),
                                ),
                                child: Text("매장",
                                    style: AppTextStyle.captionMedium)),
                          ]),
                        ],
                      ),
                      Container(
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
                          )),
                    ],
                  )
                ],
              ),
            ),
            Divider(
              color: GlobalMainGrey.grey200,
              thickness: 2,
            ),
          ],
        );
      },
    );
  }
}
