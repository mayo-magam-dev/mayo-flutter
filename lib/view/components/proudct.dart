import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/item/read_item.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/util/formater.dart';

class ProductComponents extends StatelessWidget {
  const ProductComponents({
    super.key,
    required this.itemData,
    required this.storeData,
  });
  final ReadItem itemData;
  final ReadStore storeData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push(
            '/product/${itemData.itemId}/${storeData.id}/${storeData.storeName}');
      },
      child: SizedBox(
        width: double.infinity,
        height: 125.h,
        child: Row(
          children: [
            Stack(
              children: [
                Container(
                  width: 84.w,
                  height: 84.h,
                  decoration: ShapeDecoration(
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: itemData.itemImage != "."
                          ? NetworkImage('${itemData.itemImage}')
                          : NetworkImage(''),
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ),
                (itemData.itemOnSale == true)
                    ? SizedBox.shrink()
                    : Container(
                        width: 84.w,
                        height: 84.h,
                        decoration: BoxDecoration(
                          color: Colors.black.withAlpha(210),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: SvgPicture.asset(
                            'assets/icons/vector.svg',
                            width: 34.w,
                            height: 33.h,
                          ),
                        ),
                      ),
              ],
            ),
            SizedBox(
              width: 22.w,
            ),
            SizedBox(
              width: 230.w,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    itemData.itemName,
                    style: AppTextStyle.body1Bold,
                  ),
                  SizedBox(
                    height: 7.h,
                  ),
                  itemData.itemDescription != null
                      ? Column(
                          children: [
                            Text(
                              itemData.itemDescription!,
                              style: AppTextStyle.captionMedium,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                            ),
                            SizedBox(
                              height: 4.h,
                            ),
                          ],
                        )
                      : SizedBox(),
                  itemData.itemOnSale
                      ? Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              itemData.salePercent != null
                                  ? "${itemData.salePercent?.toInt()}%"
                                  : "",
                              style: AppTextStyle.body2Bold
                                  .copyWith(color: Colors.red),
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              itemData.salePrice != null
                                  ? "${Formater.moneyFormat(itemData.salePrice)}원"
                                  : "0원",
                              style: AppTextStyle.body2Bold,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              itemData.originalPrice != null
                                  ? "${Formater.moneyFormat(itemData.originalPrice)}원"
                                  : "0원",
                              style: AppTextStyle.captionMedium
                                  .copyWith(color: Colors.grey),
                            ),
                          ],
                        )
                      : Column(
                          children: [
                            Text(
                              itemData.originalPrice != null
                                  ? "${Formater.moneyFormat(itemData.originalPrice)}원"
                                  : "0원",
                              style: AppTextStyle.body2Bold,
                            ),
                            SizedBox.shrink(),
                          ],
                        ),
                  SizedBox(
                    height: 4.h,
                  ),
                  Text(
                    "${itemData.itemQuantity}개 남음",
                    style: AppTextStyle.captionMedium
                        .copyWith(color: GlobalMainGrey.grey400),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
