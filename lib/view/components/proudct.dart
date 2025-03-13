import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/item/read_item.dart';
import 'package:mayo_flutter/util/formater.dart';

class ProductComponents extends StatelessWidget {
  const ProductComponents({super.key, required this.itemData});
  final ReadItem itemData;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        context.push('/product/${itemData.itemId}');
      },
      child: Row(
        children: [
          Image.asset("assets/images/store_product_example.png"),
          SizedBox(
            width: 22.w,
          ),
          SizedBox(
            width: 230.w,
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(itemData.itemName, style: AppTextStyle.body1Bold),
              SizedBox(
                height: 7.h,
              ),
              Text(
                itemData.itemDescription!,
                style: AppTextStyle.captionMedium,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
              SizedBox(
                height: 4.h,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (itemData.itemOnSale)
                    Text(
                      '${itemData.salePercent}%',
                      style: AppTextStyle.body2Bold.copyWith(color: Colors.red),
                    ),
                  SizedBox(width: itemData.itemOnSale ? 5.w : 0),
                  Text(
                    "${Formater.moneyFormat(itemData.salePrice)}원",
                    style: AppTextStyle.body2Bold,
                  ),
                  SizedBox(width: itemData.itemOnSale ? 5.w : 0),
                  if (itemData.itemOnSale)
                    Text(
                      "${Formater.moneyFormat(itemData.originalPrice)}원",
                      style: AppTextStyle.captionMedium
                          .copyWith(color: Colors.grey),
                    ),
                ],
              ),
              SizedBox(
                height: 4.h,
              ),
              Text(
                "${itemData.itemQuantity}개 남음",
                style: AppTextStyle.captionMedium
                    .copyWith(color: GlobalMainGrey.grey400),
              )
            ]),
          )
        ],
      ),
    );
  }
}
