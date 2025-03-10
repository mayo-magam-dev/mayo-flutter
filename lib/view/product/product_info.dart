part of 'product_page.dart';

class _ProductInfo extends StatelessWidget {
  _ProductInfo();

  var numberFormat = NumberFormat('###,###,###,###');

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 23, top: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(ProductPage.itemData.itemName,
                  style: AppTextStyle.heading2Bold),
              SizedBox(height: 8.h),
              Row(
                children: [
                  Text("${ProductPage.itemData.salePercent}%",
                      style: AppTextStyle.body2Bold.copyWith(
                          color: GlobalMainColor.globalPrimaryRedColor)),
                  SizedBox(width: 5.w),
                  Text(numberFormat.format(ProductPage.itemData.salePrice),
                      style: AppTextStyle.body2Bold),
                  SizedBox(width: 5.w),
                  Text(numberFormat.format(ProductPage.itemData.originalPrice),
                      style: AppTextStyle.body2Medium.copyWith(
                          color: GlobalMainGrey.grey300,
                          decoration: TextDecoration.lineThrough)),
                ],
              ),
              SizedBox(height: 9.h),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/pin.svg",
                      height: 20.h, width: 20.w),
                  SizedBox(width: 2.w),
                  Text("힘쎈드위치", style: AppTextStyle.body2Medium),
                ],
              ),
              SizedBox(width: 3.h),
              Row(
                children: [
                  SvgPicture.asset("assets/icons/pizza.svg",
                      height: 20.h, width: 20.w),
                  SizedBox(width: 2.w),
                  Text("${ProductPage.itemData.itemQuantity}",
                      style: AppTextStyle.body2Medium),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: 1.h,
          color: GlobalMainGrey.grey200,
          margin: EdgeInsets.symmetric(vertical: 18.h),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 23),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("추가 전달 사항", style: AppTextStyle.body1Bold),
              SizedBox(height: 4.h),
              Text(ProductPage.itemData.additionalInformation,
                  style: AppTextStyle.body2Medium),
              SizedBox(height: 15.h),
              Text("평균 조리 시간", style: AppTextStyle.body1Bold),
              SizedBox(height: 4.h),
              Text("${ProductPage.itemData.cookingTime}",
                  style: AppTextStyle.body2Medium),
            ],
          ),
        ),
        TextButton(
          onPressed: () {
            var data = ItemDataSource().getItemsByStoreId('1');
          },
          child: Text('data'),
        ),
      ],
    );
  }
}
