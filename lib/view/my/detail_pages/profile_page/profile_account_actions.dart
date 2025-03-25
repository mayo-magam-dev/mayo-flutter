part of 'profile_page.dart';

class _AccountActions extends StatelessWidget {
  //ignore: unused_element
  const _AccountActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextButton(
          onPressed: () {
            FirebaseAuth.instance.signOut();
            context.go("/");
            context.read<LoginBloc>().add(UserLogoutEvent());
          },
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            '로그아웃',
            style: AppTextStyle.body1Medium.copyWith(
              color: GlobalMainGrey.grey300,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.32,
            ),
          ),
        ),
        Text(
          ' | ',
          style: AppTextStyle.heading3Medium.copyWith(
            color: GlobalMainGrey.grey300,
            fontWeight: FontWeight.w400,
          ),
        ),
        TextButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AccountDeletePage(),
              ),
            );
          },
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            '회원탈퇴',
            style: AppTextStyle.body1Medium.copyWith(
              color: GlobalMainGrey.grey300,
              fontWeight: FontWeight.w400,
              letterSpacing: -0.32,
            ),
          ),
        ),
      ],
    );
  }
}
