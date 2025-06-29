part of 'store_page.dart';

// 영업 요일 리스트를 "월~금" 또는 "월,수,금" 형태로 포맷해 주는 헬퍼 함수

String formatOpenDays(List<int> days) {
  if (days.isEmpty) return '';

  // 1:월, 2:화, … 7:일
  const names = {
    1: '월',
    2: '화',
    3: '수',
    4: '목',
    5: '금',
    6: '토',
    7: '일',
  };

  final sorted = [...days]..sort();
  final ranges = <String>[];
  int start = sorted.first, end = start;

  for (var d in sorted.skip(1)) {
    if (d == end + 1) {
      end = d;
    } else {
      ranges.add(_rangeToString(start, end, names));
      start = end = d;
    }
  }
  ranges.add(_rangeToString(start, end, names));

  return ranges.join(', ');
}

String _rangeToString(int start, int end, Map<int, String> names) {
  if (start == end) return names[start]!;
  return '${names[start]}~${names[end]}';
}

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
              AdditionalComment(additionalComment: storeData.additionalComment),
            ],
          ),
        ),
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
              Text("계좌번호", style: AppTextStyle.subheadingBold),
              SizedBox(height: 10.h),
              if (storeData.accountNumber != null)
                Row(
                  children: [
                    Text('${storeData.accountNumber}'),
                    IconButton(
                      onPressed: () {
                        Clipboard.setData(
                            ClipboardData(text: storeData.accountNumber!));
                      },
                      icon: SvgPicture.asset('assets/icons/copy.svg'),
                    ),
                  ],
                )
              else
                SizedBox.shrink(),
            ],
          ),
        ),
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
