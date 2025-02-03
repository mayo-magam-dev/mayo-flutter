part of 'terms_policy_page.dart';

class _TermsOfUse extends StatelessWidget {
  //ignore: unused_element
  const _TermsOfUse({super.key});

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
            'mayo(마감해요) 이용 약관',
            style: AppTextStyle.heading2Bold.copyWith(
              color: GlobalMainColor.globalPrimaryBlackColor,
              letterSpacing: -0.48,
            ),
          ),
          SizedBox(height: 13.h),
          Text(
            "제 1조(목적)\n\n본 약관은 'mayo(마감해요)'(이하 '회사'라 함)가 운영하는 'mayo(마감해요) 서비스'(이하 '서비스'라 함)와 관련하여 \n'회사'와 '이용자'간에 서비스의 이용조건 및 절차, '회사'와 \n'회원'간의 권리, 의무 및 책임 사항을 규정함을 목적으로 합니다.",
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
