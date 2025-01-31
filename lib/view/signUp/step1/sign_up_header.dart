part of 'sign_up_page.dart';

class _SignUpHeader extends StatelessWidget {
  //ignore: unused_element
  const _SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: RichText(
        text: TextSpan(
          text: '반갑습니다!\n',
          style: AppTextStyle.heading2Bold.copyWith(
              color: GlobalMainColor.globalPrimaryBlackColor,
              letterSpacing: -0.48),
          children: [
            TextSpan(
              text: '마요 이용을 위한\n약관 동의가 필요합니다.',
              style: AppTextStyle.heading3Medium.copyWith(letterSpacing: -0.42),
            ),
          ],
        ),
      ),
    );
  }
}
