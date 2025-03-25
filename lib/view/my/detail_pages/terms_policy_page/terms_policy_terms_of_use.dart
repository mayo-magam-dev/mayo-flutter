part of 'terms_policy_page.dart';

class _TermsOfUse extends StatelessWidget {
  const _TermsOfUse({ required this.board});

  final Board board;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 17,
      ),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            board.title,
            style: AppTextStyle.heading2Bold.copyWith(
              color: GlobalMainColor.globalPrimaryBlackColor,
              letterSpacing: -0.48,
            ),
          ),
          SizedBox(height: 13.h),
          Text(
            board.content,
            style: AppTextStyle.body2Medium.copyWith(
              color: GlobalMainColor.globalPrimaryBlackColor,
              letterSpacing: -0.28,
            ),
          ),
        ],
      ),
    );
  }
}
