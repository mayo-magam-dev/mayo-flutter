part of 'store_page.dart';

class _StoreInfoSection extends StatelessWidget {
  final ReadStore storeData;
  final List<ReadItem> itemData;

  const _StoreInfoSection({
    required this.storeData,
    required this.itemData,
  });

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
                    "영업시간 : 화 ~ 토  ${storeData.openTime} ~ ${storeData.closeTime}\n마감할인 시간 : 화 ~ 토  ${storeData.saleStart} ~ ${storeData.saleEnd}",
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
                  storeData.additionalComment,
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
                    "${storeData.saleStart} ~ ${storeData.saleEnd}",
                    style: AppTextStyle.body1Bold
                        .copyWith(color: GlobalMainColor.globalButtonColor),
                  )
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              ProductComponents(
                itemData: itemData[0],
              ),
              Container(
                  margin: EdgeInsets.symmetric(vertical: 16.5.h),
                  height: 1.h,
                  color: GlobalMainGrey.grey200),
              ProductComponents(
                itemData: itemData[1],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
