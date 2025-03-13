part of 'store_page.dart';

class _StoreOriginInfo extends StatelessWidget {
  const _StoreOriginInfo({required this.storeData});

  final ReadStore storeData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 24.w),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("원산지 정보", style: AppTextStyle.heading3Bold),
            Text(
              storeData.originInfo ?? '',
              style: AppTextStyle.body2Medium,
            ),
          ],
        ),
      ),
    );
  }
}
