part of 'store_page.dart';

// ignore: unused_element
class _StoreOriginInfo extends StatelessWidget {
  // ignore: unused_element
  const _StoreOriginInfo({super.key});

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
              "햄(돼기고기, 닭고기: 국내산",
              style: AppTextStyle.body2Medium,
            ),
          ],
        ),
      ),
    );
  }
}
