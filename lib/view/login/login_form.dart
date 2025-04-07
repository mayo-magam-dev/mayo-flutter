part of 'login_page.dart';

class _LoginForm extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

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
            onTapOutside: (event) => FocusScope.of(context).unfocus(),
            obscureText: true,
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
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset('assets/icons/eye_off.svg')),
            ),
          ),
          SizedBox(height: 24.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () {},
                child: Text(
                  '회원가입',
                  style: TextStyle(
                    color: GlobalMainGrey.grey300,
                    fontSize: 12.sp,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  '|',
                  style: TextStyle(
                    color: GlobalMainGrey.grey300,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  '비밀번호 찾기',
                  style: TextStyle(
                    color: GlobalMainGrey.grey300,
                    fontSize: 12.sp,
                    fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w500,
                    letterSpacing: -0.24,
                  ),
                ),
              ),
              SizedBox(height: 40.h),
            ],
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(10),
            child: Container(
              width: double.infinity,
              height: 46.h,
              decoration: ShapeDecoration(
                color: GlobalMainGrey.grey200,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                child: Text(
                  '로그인',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.32,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
