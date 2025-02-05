part of 'login_page.dart';

class _LoginSocialLogin extends StatelessWidget {
  //ignore: unused_element
  const _LoginSocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {
            GoogleLogin().login();
          },
          borderRadius: BorderRadius.circular(50),
          child: Container(
            width: 281.w,
            height: 48.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Color(0xFF888888),
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/google_logo.svg'),
                SizedBox(width: 18.w),
                Text('Google 로그인', style: AppTextStyle.body1Medium),
              ],
            ),
          ),
        ),
        SizedBox(height: 24.h),
        InkWell(
          onTap: () {},
          borderRadius: BorderRadius.circular(50),
          child: Container(
            width: 281.w,
            height: 48.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: Color(0xFF888888),
                ),
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset('assets/icons/apple_logo.svg'),
                SizedBox(width: 18.w),
                Text('Apple 로그인', style: AppTextStyle.body1Medium),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
