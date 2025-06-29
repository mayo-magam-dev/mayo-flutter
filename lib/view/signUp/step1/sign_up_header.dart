part of 'sign_up_step1_page.dart';

class _SignUpHeader extends StatelessWidget {
  const _SignUpHeader();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: RichText(
        text: TextSpan(
          text: '반갑습니다!\n',
          style: AppTextStyle.heading2Bold.copyWith(
            color: GlobalMainColor.globalPrimaryBlackColor,
            letterSpacing: -0.48,
            height: 1.2, // ✅ 줄 간격 조절
          ),
          children: [
            TextSpan(
              text: '마요 이용을 위한\n약관 동의가 필요합니다.',
              style: AppTextStyle.heading3Medium.copyWith(
                letterSpacing: -0.42,
                height: 1.2, 
              ),
            ),
          ],
        ),
      ),
    );
  }
}
