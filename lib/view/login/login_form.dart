part of 'login_page.dart';

class _LoginForm extends StatefulWidget {
  @override
  State<_LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<_LoginForm> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();

  final TextEditingController _passwordController = TextEditingController();

  bool obscureText = true;

  Future<void> _loginWithEmailAndPassword(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
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
        if (context.mounted) {
          context.read<LoginBloc>().add(UserLoginEvent());
          context.go('/');
        }
      } on FirebaseAuthException catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(e.message ?? '로그인에 실패했습니다.'),
              backgroundColor: GlobalMainColor.globalPrimaryRedColor,
            ),
          );
        }
      }
    }
  }

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            controller: _emailController,
            validator: (value) {
              if (value!.isEmpty) {
                return '이메일을 입력해주세요.';
              }
              return null;
            },
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: GlobalMainYellow.yellow200,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: GlobalMainGrey.grey200,
                ),
              ),
              hintText: '이메일을 입력해주세요.',
              hintStyle: AppTextStyle.body2Medium.copyWith(
                color: GlobalMainGrey.grey300,
                letterSpacing: -0.28,
              ),
            ),
          ),
          SizedBox(height: 25.h),
          TextFormField(
            controller: _passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return '비밀번호를 입력해주세요.';
              }
              return null;
            },
            obscureText: obscureText,
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            textInputAction: TextInputAction.done,
            decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: GlobalMainYellow.yellow200,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  width: 2,
                  color: GlobalMainGrey.grey200,
                ),
              ),
              hintText: '비밀번호를 입력해주세요.',
              hintStyle: AppTextStyle.body2Medium.copyWith(
                color: GlobalMainGrey.grey300,
                letterSpacing: -0.28,
              ),
              suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    obscureText = !obscureText;
                  });
                },
                icon: obscureText
                    ? SvgPicture.asset('assets/icons/eye_off.svg')
                    : SvgPicture.asset('assets/icons/eye.svg'),
              ),
            ),
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {
                  context.push('/signup');
                },
                child: Text(
                  '회원가입',
                  style: AppTextStyle.captionMedium.copyWith(
                    color: GlobalMainGrey.grey300,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12.w),
                child: Text(
                  '|',
                  style: AppTextStyle.captionMedium.copyWith(
                    color: GlobalMainGrey.grey300,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  '비밀번호 찾기',
                  style: AppTextStyle.captionMedium.copyWith(
                    color: GlobalMainGrey.grey300,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 40.h),
          ElevatedButton(
            onPressed: () => _loginWithEmailAndPassword(context),
            style: ElevatedButton.styleFrom(
              backgroundColor: GlobalMainYellow.yellow200,
              minimumSize: Size(double.infinity, 50.h),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            child: Text(
              '로그인',
              style: AppTextStyle.body1Bold.copyWith(
                color: Colors.white,
                letterSpacing: -0.32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
