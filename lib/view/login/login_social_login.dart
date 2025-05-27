part of 'login_page.dart';

class _LoginSocialLogin extends StatefulWidget {
  const _LoginSocialLogin();

  @override
  State<_LoginSocialLogin> createState() => _LoginSocialLoginState();
}

class _LoginSocialLoginState extends State<_LoginSocialLogin> {
  Future<void> _handleLoginSuccess({required String provider}) async {
    try {
      final userData = await UserDataSource().getUser();

      if (!mounted) return;
      context.read<LoginBloc>().add(UserLoginEvent());
      await FcmUtils.registerFcmToken();
      context.go("/");
    } on DioException catch (_) {
      if (!mounted) return;
      final user = FirebaseAuth.instance.currentUser;
      if (user != null) {
        context.read<LoginBloc>().add(SocialLoginEvent(
              email: user.email ?? '',
              provider: provider,
            ));

        context.go("/signup");
      }
    }
  }

  Future<void> _loginWithGoogle() async {
    try {
      await GoogleLogin().login();
      await _handleLoginSuccess(provider: 'google');
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Google 로그인 실패: $e')),
      );
    }
  }

  Future<void> _loginWithApple() async {
    try {
      await AppleLogin().login();
      await _handleLoginSuccess(provider: 'apple');
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Apple 로그인 실패: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: _loginWithGoogle,
          borderRadius: BorderRadius.circular(50),
          child: Container(
            width: 281.w,
            height: 48.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF888888)),
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
          onTap: _loginWithApple,
          borderRadius: BorderRadius.circular(50),
          child: Container(
            width: 281.w,
            height: 48.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(width: 1, color: Color(0xFF888888)),
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
