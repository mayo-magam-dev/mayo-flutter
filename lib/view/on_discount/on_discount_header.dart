part of 'on_discount_page.dart';

class _OnDiscountHeader extends StatelessWidget {
  //ignore: unused_element
  const _OnDiscountHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              text: '오늘은 뭘 먹을까?\n',
              style: AppTextStyle.heading2Bold.copyWith(
                color: GlobalMainColor.globalPrimaryBlackColor,
                letterSpacing: -0.48,
              ),
              children: [
                TextSpan(
                  text: '지금 업데이트된 윌 동네 마감 할인 정보',
                  style: AppTextStyle.body1Bold.copyWith(
                      color: GlobalMainGrey.grey600, letterSpacing: -0.32),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
