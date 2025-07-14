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

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  String? _emailError;
  String? _passwordError;

  @override
  void initState() {
    super.initState();

    _passwordController.addListener(_checkPasswordMatch);
    _confirmPasswordController.addListener(_checkPasswordMatch);

    WidgetsBinding.instance.addPostFrameCallback((_) {
      final state = context.read<SignUpBloc>().state;
      if (state.email != null && state.email!.isNotEmpty) {
        _emailController.text = state.email!;
      }
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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

      context.read<SignUpBloc>().add(SetPasswordConfirmation(match));
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 24),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '이메일',
                  style: AppTextStyle.subheadingBold
                      .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
                ),
                SizedBox(height: 5.h),
                // 이메일 입력란
                TextFormField(
                    controller: _emailController,
                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    textInputAction: TextInputAction.next,
                    onChanged: (value) {
                      context.read<SignUpBloc>().add(SetEmail(value));
                      _formKey.currentState?.validate();
                    },
                    onFieldSubmitted: (value) {
                      context.read<SignUpBloc>().add(SetEmail(value));
                      _formKey.currentState?.validate();
                    },
                    validator: (value) {
                      String? error;
                      if (value == null || value.isEmpty) {
                        error = '이메일을 입력해주세요.';
                      } else if (!RegExp(r'^[^@]+@[^@]+\.[^@]+$').hasMatch(value)) {
                        error = '이메일 형식이 올바르지 않습니다.';
                      }
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (mounted) setState(() { _emailError = error; });
                      });
                      return null;
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
                      hintStyle: AppTextStyle.body2Medium.copyWith(
                        color: GlobalMainGrey.grey300,
                        letterSpacing: -0.28,
                      ),
                    ),
                ),
                if (_emailError != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.warning, color: GlobalMainColor.globalPrimaryRedColor, size: 16),
                        SizedBox(width: 4),
                        Text(
                          _emailError!,
                          style: TextStyle(
                            color: GlobalMainColor.globalPrimaryRedColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 26.h),
                Text(
                  '비밀번호',
                  style: AppTextStyle.subheadingBold
                      .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
                ),
                SizedBox(height: 5.h),
                // 비밀번호 입력란
                TextFormField(
                    controller: _passwordController,
                    onTapOutside: (event) => FocusScope.of(context).unfocus(),
                    obscureText: _obscurePassword,
                    onChanged: (value) {
                      context.read<SignUpBloc>().add(SetPassword(value));
                      _formKey.currentState?.validate();
                    },
                    validator: (value) {
                      String? error;
                      if (value == null || value.isEmpty) {
                        error = '비밀번호를 입력해주세요.';
                      } else if (value.length < 8) {
                        error = '비밀번호는 8자 이상이어야 합니다.';
                      }
                      WidgetsBinding.instance.addPostFrameCallback((_) {
                        if (mounted) setState(() { _passwordError = error; });
                      });
                      return null;
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
                      hintStyle: AppTextStyle.body2Medium.copyWith(
                        color: GlobalMainGrey.grey300,
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
                if (_passwordError != null)
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: Row(
                      children: [
                        Icon(Icons.warning, color: GlobalMainColor.globalPrimaryRedColor, size: 16),
                        SizedBox(width: 4),
                        Text(
                          _passwordError!,
                          style: TextStyle(
                            color: GlobalMainColor.globalPrimaryRedColor,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                SizedBox(height: 26.h),
                Text(
                  '비밀번호 확인',
                  style: AppTextStyle.subheadingBold
                      .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
                ),
                SizedBox(height: 5.h),
                // 비밀번호 확인 입력란
                TextFormField(
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
                      hintStyle: AppTextStyle.body2Medium.copyWith(
                        color: GlobalMainGrey.grey300,
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

                // 비밀번호 일치 여부 메시지 표시
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Icon(
                        _passwordsMatch ? Icons.check_circle : Icons.warning,
                        color: _passwordsMatch
                            ? Colors.green
                            : GlobalMainColor.globalPrimaryRedColor,
                        size: 16,
                      ),
                      SizedBox(width: 4),
                      Text(
                        _passwordsMatch
                            ? '비밀번호가 일치합니다.'
                            : '비밀번호가 일치하지 않습니다.',
                        style: TextStyle(
                          color: _passwordsMatch
                              ? Colors.green
                              : GlobalMainColor.globalPrimaryRedColor,
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
