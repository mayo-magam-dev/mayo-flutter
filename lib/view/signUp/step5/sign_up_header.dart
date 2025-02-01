part of 'sign_up_step5_page.dart';

class _SignUpHeader extends StatelessWidget {
  //ignore: unused_element
  const _SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24),
      child: RichText(
        text: TextSpan(
          text: '가입이 완료되었어요.🥳\n',
          style: AppTextStyle.heading2Bold.copyWith(
            color: GlobalMainColor.globalPrimaryBlackColor,
            letterSpacing: -0.48,
          ),
          children: [
            TextSpan(
              text: '이제 마용와 함께\n마감할인 정보를 알아봐요!',
              style: AppTextStyle.heading2Medium.copyWith(
                color: GlobalMainColor.globalPrimaryBlackColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
