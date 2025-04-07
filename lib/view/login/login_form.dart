part of 'login_page.dart';

class _LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> _loginWithEmailAndPassword(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: _emailController.text,
          password: _passwordController.text,
        );
        if (context.mounted) {
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
              hintStyle: TextStyle(
                color: GlobalMainGrey.grey300,
                fontSize: 14.sp,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
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
            obscureText: true,
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
              hintStyle: TextStyle(
                color: GlobalMainGrey.grey300,
                fontSize: 14.sp,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                letterSpacing: -0.28,
              ),
            ),
          ),
          SizedBox(height: 25.h),
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
              style: TextStyle(
                color: Colors.white,
                fontSize: 16.sp,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w600,
                letterSpacing: -0.32,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
