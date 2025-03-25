part of 'sign_up_step2_page.dart';

class _SignUpMiddle extends StatefulWidget {
  const _SignUpMiddle();

  @override
  State<_SignUpMiddle> createState() => _SignUpMiddleState();
}

class _SignUpMiddleState extends State<_SignUpMiddle> {
  bool _obscurePassword = true;
  bool _obscurePasswordConfirm = true;
  bool _passwordsMatch = false;

  // 비밀번호 입력 컨트롤러 추가
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // 컨트롤러 리스너 설정
    _passwordController.addListener(_checkPasswordMatch);
    _confirmPasswordController.addListener(_checkPasswordMatch);
  }

  @override
  void dispose() {
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

  // 비밀번호 일치 확인 함수
  void _checkPasswordMatch() {
    final password = _passwordController.text;
    final confirmPassword = _confirmPasswordController.text;

    final match = password.isNotEmpty &&
        confirmPassword.isNotEmpty &&
        password == confirmPassword;

    if (match != _passwordsMatch) {
      setState(() {
        _passwordsMatch = match;
      });

      // BLoC에 비밀번호 일치 상태 업데이트
      context.read<SignUpBloc>().add(SetPasswordConfirmation(match));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '이메일',
                style: AppTextStyle.subheadingBold
                    .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
              ),
              SizedBox(height: 5.h),
              SizedBox(
                width: double.infinity,
                height: 45.h,
                child: TextFormField(
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  textInputAction: TextInputAction.next,
                  onChanged: (value) {
                    if (value.isNotEmpty) {
                      context.read<SignUpBloc>().add(SetEmail(value));
                    }
                  },
                  onFieldSubmitted: (value) {
                    if (value.isNotEmpty) {
                      context.read<SignUpBloc>().add(SetEmail(value));
                    }
                  },
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
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                          color: GlobalMainColor.globalPrimaryRedColor,
                        )),
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
              ),
              SizedBox(height: 26.h),
              Text(
                '비밀번호',
                style: AppTextStyle.subheadingBold
                    .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
              ),
              SizedBox(height: 5.h),
              SizedBox(
                width: double.infinity,
                height: 45.h,
                child: TextFormField(
                  controller: _passwordController,
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  obscureText: _obscurePassword,
                  onChanged: (value) {
                    context.read<SignUpBloc>().add(SetPassword(value));
                  },
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
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                          color: GlobalMainColor.globalPrimaryRedColor,
                        )),
                    hintText: '비밀번호 (8자 이상)',
                    hintStyle: TextStyle(
                      color: GlobalMainGrey.grey300,
                      fontSize: 14.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.28,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: SvgPicture.asset(
                        _obscurePassword
                            ? 'assets/icons/eye_off.svg'
                            : 'assets/icons/eye_on.svg',
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 26.h),
              Text(
                '비밀번호 확인',
                style: AppTextStyle.subheadingBold
                    .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
              ),
              SizedBox(height: 5.h),
              SizedBox(
                width: double.infinity,
                height: 45.h,
                child: TextFormField(
                  controller: _confirmPasswordController,
                  onTapOutside: (event) => FocusScope.of(context).unfocus(),
                  obscureText: _obscurePasswordConfirm,
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
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                          color: GlobalMainColor.globalPrimaryRedColor,
                        )),
                    hintText: '비밀번호 확인',
                    hintStyle: TextStyle(
                      color: GlobalMainGrey.grey300,
                      fontSize: 14.sp,
                      fontFamily: 'Pretendard',
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.28,
                    ),
                    suffixIcon: IconButton(
                      onPressed: () {
                        setState(() {
                          _obscurePasswordConfirm = !_obscurePasswordConfirm;
                        });
                      },
                      icon: SvgPicture.asset(
                        _obscurePasswordConfirm
                            ? 'assets/icons/eye_off.svg'
                            : 'assets/icons/eye_on.svg',
                      ),
                    ),
                  ),
                ),
              ),

              // 비밀번호 일치 여부 메시지 표시
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Icon(
                      _passwordsMatch ? Icons.check_circle : Icons.warning,
                      color: _passwordsMatch
                          ? Colors.green
                          : _confirmPasswordController.text.isEmpty
                              ? Colors.transparent
                              : GlobalMainColor.globalPrimaryRedColor,
                      size: 16,
                    ),
                    SizedBox(width: 4),
                    Text(
                      _passwordsMatch
                          ? '비밀번호가 일치합니다.'
                          : _confirmPasswordController.text.isEmpty
                              ? ''
                              : '비밀번호가 일치하지 않습니다.',
                      style: TextStyle(
                        color: _passwordsMatch
                            ? Colors.green
                            : _confirmPasswordController.text.isEmpty
                                ? Colors.transparent
                                : GlobalMainColor.globalPrimaryRedColor,
                        fontSize: 12.sp,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
