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
    bool itemDataNotEmpty = itemData.isNotEmpty;
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
                AdditionalComment(
                    additionalComment: storeData.additionalComment),
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
              itemDataNotEmpty
                  ? Column(
                      children: List.generate(
                        itemData.length,
                        (index) {
                          return Column(
                            children: [
                              ProductComponents(
                                itemData: itemData[index],
                                storeData: storeData,
                              ),
                              if (index != itemData.length - 1)
                                Divider(
                                  color: GlobalMainGrey.grey200,
                                  thickness: 2,
                                ),
                            ],
                          );
                        },
                      ),
                    )
                  : SizedBox(),
            ],
          ),
        ),
      ],
    );
  }
}

class AdditionalComment extends StatefulWidget {
  const AdditionalComment({
    super.key,
    required this.additionalComment,
  });

  final String? additionalComment;

  @override
  State<AdditionalComment> createState() => _AdditionalCommentState();
}

class _AdditionalCommentState extends State<AdditionalComment> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isExpanded = !isExpanded;
        });
      },
      child: Text(
        widget.additionalComment ?? '',
        style: AppTextStyle.body1Medium,
        overflow: TextOverflow.ellipsis,
        maxLines: isExpanded ? 13 : 2,
        softWrap: false,
      ),
    );
  }
}
