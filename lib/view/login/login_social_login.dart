part of 'login_page.dart';

class _LoginSocialLogin extends StatefulWidget {
  const _LoginSocialLogin();

  @override
  State<_LoginSocialLogin> createState() => _LoginSocialLoginState();
}


    
class _LoginSocialLoginState extends State<_LoginSocialLogin> {
  Future<void> _loginWithGoogle() async {
    try {
      await GoogleLogin().login();
      String? fcmToken = await FirebaseMessaging.instance.getToken();
        if (fcmToken == null) {
          debugPrint("FCM 토큰을 가져오지 못했습니다.");
          return;
        }

        await UserDataSource().createFcmToken(
          createFcmToken: CreateFcmToken(
              deviceType: Platform.isAndroid ? "Android" : "iOS",
              fcmToken: fcmToken),
        );

      if (!mounted) return;
      context.read<LoginBloc>().add(UserLoginEvent());
      await Future.delayed(const Duration(milliseconds: 100));
      if (!mounted) return;
      context.go("/");
    } catch (e) {
      if (!mounted) return;

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Google 로그인 실패: $e')),
      );
    }
  }

  Future<void> _loginWithApple() async {
    final UserDataSource dataSource = UserDataSource();

    try {
      await AppleLogin().login();
      final result = await dataSource.getUser();

      if (!mounted) return;

      result.uid.isNotEmpty ? context.go("/") : context.go("/register");
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
          onTap: _loginWithApple,
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