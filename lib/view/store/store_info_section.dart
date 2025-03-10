part of 'store_page.dart';

class _StoreInfoSection extends StatelessWidget {
  const _StoreInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
          children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("영업 시간 및 마감할인 시간", style: AppTextStyle.subheadingBold),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                        "영업시간 : 화 ~ 토  ${StorePage.storeData.openTime} ~ ${StorePage.storeData.closeTime}\n마감할인 시간 : 화 ~ 토  ${StorePage.storeData.saleStart} ~ ${StorePage.storeData.saleEnd}",
                        style: AppTextStyle.body1Medium),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 1.h,
                color: GlobalMainGrey.grey200,
              ),
            ),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("가게 공지사항", style: AppTextStyle.subheadingBold),
                    SizedBox(
                      height: 10.h,
                    ),
                    Text(
                      "사장님이 설정한 공지사항이 여기에 나오는데 길어질 경우 펼치기 접기가 가능합니다. 두줄만 나옴. 이거 넘어가면 점점점 생김사장님이 설정한 공지사항이 여기에 나오는데 길어질 경우 펼치기 접기가 가능합니다. 두줄만 나옴. 이거 넘어가면 점점점 생김",
                      style: AppTextStyle.body1Medium,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                    ),
                  ],
                )),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Container(
                height: 1.h,
                color: GlobalMainGrey.grey200,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("마감 할인 정보", style: AppTextStyle.body1Bold),
                      Text(
                        "${StorePage.storeData.saleStart} ~ ${StorePage.storeData.saleEnd}",
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
              ),
            ),
          ],
        );
  }
}