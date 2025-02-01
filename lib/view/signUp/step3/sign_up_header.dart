part of 'sign_up_step3_page.dart';

class _SignUpHeader extends StatelessWidget {
  //ignore: unused_element
  const _SignUpHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      '가입을 위한 정보를 입력해주세요',
      style: AppTextStyle.heading2Medium.copyWith(
        color: GlobalMainColor.globalPrimaryBlackColor,
      ),
    );
  }
}
