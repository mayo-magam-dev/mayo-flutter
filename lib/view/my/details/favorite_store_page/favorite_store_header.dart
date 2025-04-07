part of 'favorite_store_page.dart';

class _Header extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '내가 찜한 가게',
                style: AppTextStyle.heading2Bold.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.48,
                ),
              ),
              Text(
                '원하는 가게 찜을 통해 알림을 설정할 수 있어요',
                style: AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainGrey.grey600,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
