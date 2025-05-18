import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/store/read_simple_store_response.dart';
import 'package:mayo_flutter/view/components/one_product.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'on_discount_scaffold.dart';
part 'on_discount_header.dart';

class OnDiscountPage extends StatelessWidget {
  OnDiscountPage({super.key});

  final Future<List<ReadSimpleStoreResponse>> onSaleData =
      StoreDataSource().getOnSaleStores();

  Widget storeList() {
    return FutureBuilder(
      future: onSaleData,
      builder: (context, snapshot) {
        if (snapshot.hasData == false) {
          return SizedBox();
        }
        if (snapshot.data!.isEmpty) {
          return Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/icons/bread.svg',
                  width: 150.w,
                  height: 150.h,
                ),
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
                  style: AppTextStyle.body1Medium.copyWith(
                    color: GlobalMainColor.globalPrimaryBlackColor,
                  ),
                ),
              ],
            ),
          );
        }

        return Expanded(
          child: ListView.builder(
            itemCount: snapshot.data!.length,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () =>
                      context.push("/store/${snapshot.data![index].id}"),
                  child: OneProductWidget(
                    storeIndex: index,
                    storeData: snapshot.data,
                  ));
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(title: '지금 할인 중', showCarts: true),
      header: _OnDiscountHeader(),
      storeList: storeList(),
    );
  }
}
