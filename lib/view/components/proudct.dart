import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/item/read_item.dart';
import 'package:mayo_flutter/util/formater.dart';

class ProductComponents extends StatelessWidget {
  const ProductComponents({super.key, required this.result});
  final ReadItem result;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset("assets/images/store_product_example.png"),
        SizedBox(
          width: 22.w,
        ),
        SizedBox(
          width: 232.w,
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(result.itemName, style: AppTextStyle.body1Bold),
            SizedBox(
              height: 7.h,
            ),
            Text(
              result.itemDescription,
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
                if (result.itemOnSale)
                  Text(
                    "25%",
                    style: AppTextStyle.body2Bold.copyWith(color: Colors.red),
                  ),
                SizedBox(width: result.itemOnSale ? 5.w : 0),
                Text(
                  "${Formater.moneyFormat(result.salePrice)}원",
                  style: AppTextStyle.body2Bold,
                ),
                SizedBox(width: result.itemOnSale ? 5.w : 0),
                if (result.itemOnSale)
                  Text(
                    "${Formater.moneyFormat(result.originalPrice)}원",
                    style:
                        AppTextStyle.captionMedium.copyWith(color: Colors.grey),
                  ),
              ],
            ),
            SizedBox(
              height: 4.h,
            ),
            Text(
              "${result.itemQuantity}개 남음",
              style: AppTextStyle.captionMedium
                  .copyWith(color: GlobalMainGrey.grey400),
            )
          ]),
        )
      ],
    );
  }
}
