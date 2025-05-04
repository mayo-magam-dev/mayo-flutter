part of 'login_page.dart';

class _LoginSocialLogin extends StatefulWidget {
  const _LoginSocialLogin();

  @override
  State<_LoginSocialLogin> createState() => _LoginSocialLoginState();
}


    
class _LoginSocialLoginState extends State<_LoginSocialLogin> {
  Future<void> _loginWithGoogle() async {
    try {
      final userCredential = await GoogleLogin().login();
      String? fcmToken = await FirebaseMessaging.instance.getToken();
      if (fcmToken == null) {
        debugPrint("FCM 토큰을 가져오지 못했습니다.");
        return;
      }

      try {
        // 사용자 정보 조회 시도
        final userData = await UserDataSource().getUser();
        
        // 사용자 정보가 있으면 FCM 토큰 등록 후 홈으로 이동
        await UserDataSource().createFcmToken(
          createFcmToken: CreateFcmToken(
              deviceType: Platform.isAndroid ? "Android" : "iOS",
              fcmToken: fcmToken),
        );

        if (!mounted) return;
        context.read<LoginBloc>().add(UserLoginEvent());
        context.go("/");
      } on DioException catch (e) {
        // 사용자 정보가 없으면 회원가입 페이지로 이동
        if (!mounted) return;
        final user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          context.read<LoginBloc>().add(SocialLoginEvent(
            email: user.email ?? '',
            provider: 'google'
          ));
          
          // 회원가입 블록에 이메일 설정
          final signUpBloc = BlocProvider.of<SignUpBloc>(context);
          signUpBloc.add(SetEmail(user.email ?? ''));
          context.go("/signup");
        }
      }
    } catch (e) {
      if (!mounted) return;
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Google 로그인 실패: $e')),
      );
    }
  }

  Future<void> _loginWithApple() async {
    try {
      final userCredential = await AppleLogin().login();
      // String? fcmToken = await FirebaseMessaging.instance.getToken();
      // if (fcmToken == null) {
      //   debugPrint("FCM 토큰을 가져오지 못했습니다.");
      //   return;
      // }

      try {
        // 사용자 정보 조회 시도
        final userData = await UserDataSource().getUser();
        
        // 사용자 정보가 있으면 FCM 토큰 등록 후 홈으로 이동
        // await UserDataSource().createFcmToken(
        //   createFcmToken: CreateFcmToken(
        //       deviceType: Platform.isAndroid ? "Android" : "iOS",
        //       fcmToken: fcmToken),
        // );

        if (!mounted) return;
        context.read<LoginBloc>().add(UserLoginEvent());
        context.go("/");
      } on DioException catch (e) {
        // 사용자 정보가 없으면 회원가입 페이지로 이동
        if (!mounted) return;
        final user = FirebaseAuth.instance.currentUser;
        if (user != null) {
          context.read<LoginBloc>().add(SocialLoginEvent(
            email: user.email ?? '',
            provider: 'apple'
          ));
          
          // 회원가입 블록에 이메일 설정
          final signUpBloc = BlocProvider.of<SignUpBloc>(context);
          signUpBloc.add(SetEmail(user.email ?? ''));
          context.go("/signup");
        }
      }
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