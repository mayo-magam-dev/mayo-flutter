part of 'store_page.dart';

class _StoreInfoBottom extends StatelessWidget {
  // ignore: unused_element
  const _StoreInfoBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("마감 할인 정보", style: AppTextStyle.body1Bold),
                Text(
                  "19:00 ~ 21:00",
                  style: AppTextStyle.body1Bold
                      .copyWith(color: GlobalMainColor.globalButtonColor),
                )
              ],
            ),
            SizedBox(
              height: 15.h,
            ),
            ProductComponents(
              result: ReadItem(
                  itemId: "1",
                  itemName: "피자",
                  itemDescription: "맛있는 피자",
                  originalPrice: 20000,
                  salePercent: 25,
                  itemQuantity: 10,
                  itemOnSale: true,
                  itemImage: "assets/images/store_product_example.png",
                  salePrice: 15000,
                  cookingTime: 20,
                  additionalInformation: "맛있는 피자"),
            ),
            Container(
                margin: EdgeInsets.symmetric(vertical: 16.5.h),
                height: 1.h,
                color: GlobalMainGrey.grey200),
            ProductComponents(
              result: ReadItem(
                  itemId: "2",
                  itemName: "피자",
                  itemDescription: "맛있는 피자",
                  originalPrice: 20000,
                  salePercent: 0,
                  itemQuantity: 10,
                  itemOnSale: false,
                  itemImage: "assets/images/store_product_example.png",
                  salePrice: 20000,
                  cookingTime: 20,
                  additionalInformation: "맛있는 피자"),
            ),
          ],
        ));
  }
}

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
