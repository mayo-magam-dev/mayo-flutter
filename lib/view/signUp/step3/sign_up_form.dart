part of 'sign_up_step3_page.dart';

class _SignUpForm extends StatefulWidget {
  //ignore: unused_element
  const _SignUpForm({super.key, required this.onValidationChanged});
  
  final void Function(bool isValid) onValidationChanged;

  @override
  State<_SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<_SignUpForm> {
  static final GlobalKey<FormState> globalFormKey = GlobalKey<FormState>();
  Map<String, bool> list = {'man': false, 'woman': false, 'notSelect': false};

  // 컨트롤러 추가
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _displayNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _birthController = TextEditingController();
  final _formKey = globalFormKey;

  String? _nameError;
  String? _displayNameError;
  String? _birthError;
  String? _phoneError;
  
  // 각 필드의 유효성 상태 추적
  bool _isNameValid = false;
  bool _isDisplayNameValid = false;
  bool _isBirthValid = false;
  bool _isPhoneValid = false;
  bool _isGenderSelected = false;
  
  // validation 상태를 업데이트하는 메서드
  void _updateFormValidation() {
    final isFormValid = _isNameValid && _isDisplayNameValid && _isBirthValid && _isPhoneValid && _isGenderSelected;
    
    // 부모 위젯에게 validation 상태 전달
    widget.onValidationChanged(isFormValid);
  }

  @override
  void dispose() {
    _nameController.dispose();
    _displayNameController.dispose();
    _phoneNumberController.dispose();
    _birthController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: _formKey,
        autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '이름',
            style: AppTextStyle.subheadingBold
                .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
          ),
            TextFormField(
              controller: _nameController,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              textInputAction: TextInputAction.next,
              onChanged: (value) {
                setState(() {
                  if (value.isEmpty) {
                    _nameError = '이름을 입력해주세요.';
                    _isNameValid = false;
                  } else if (!RegExp(r'^[가-힣]{2,10}$').hasMatch(value)) {
                    _nameError = '이름은 완성형 한글 2~10자만 입력 가능합니다.';
                    _isNameValid = false;
                  } else {
                    _nameError = null;
                    _isNameValid = true;
                  }
                });
                _updateFormValidation();
                context.read<SignUpBloc>().add(SetName(value));
              },
              validator: (value) {
                return null;
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                errorStyle: TextStyle(height: 0.5, fontSize: 0),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainGrey.grey200,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainYellow.yellow200,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainColor.globalPrimaryRedColor,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                      color: GlobalMainColor.globalPrimaryRedColor,
                  ),
                ),
                hintText: '이름을 입력해주세요',
                hintStyle: TextStyle(
                  color: GlobalMainGrey.grey300,
                  fontSize: 14.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.28,
                ),
              ),
            ),
            if (_nameError != null)
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Row(
                  children: [
                    Icon(Icons.warning, color: GlobalMainColor.globalPrimaryRedColor, size: 16),
                    SizedBox(width: 4),
                    Text(
                      _nameError!,
                      style: TextStyle(
                        color: GlobalMainColor.globalPrimaryRedColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
            SizedBox(height: 20.h),
          Text(
            '닉네임',
            style: AppTextStyle.subheadingBold
                .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
          ),
            TextFormField(
              controller: _displayNameController,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              textInputAction: TextInputAction.next,
              onChanged: (value) {
                setState(() {
                  if (value.isEmpty) {
                    _displayNameError = null;
                    _isDisplayNameValid = false;
                  } else if (!RegExp(r'^[가-힣a-zA-Z0-9]{2,10}$').hasMatch(value)) {
                    _displayNameError = '닉네임은 한글/영문/숫자 2~10자만 입력 가능합니다.';
                    _isDisplayNameValid = false;
                  } else {
                    _displayNameError = null;
                    _isDisplayNameValid = true;
                  }
                });
                _updateFormValidation();
                context.read<SignUpBloc>().add(SetDisplayName(value));
              },
              // 닉네임 validator
              validator: (value) {
                return null;
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                errorStyle: TextStyle(height: 1, fontSize: 12, color: GlobalMainColor.globalPrimaryRedColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainGrey.grey200,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainYellow.yellow200,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainColor.globalPrimaryRedColor,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                      color: GlobalMainColor.globalPrimaryRedColor,
                  ),
                ),
                hintText: '닉네임을 입력해주세요.',
                hintStyle: TextStyle(
                  color: GlobalMainGrey.grey300,
                  fontSize: 14.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.28,
                ),
              ),
            ),
            if (_displayNameError != null)
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Row(
                  children: [
                    Icon(Icons.warning, color: GlobalMainColor.globalPrimaryRedColor, size: 16),
                    SizedBox(width: 4),
                    Text(
                      _displayNameError!,
                      style: TextStyle(
                        color: GlobalMainColor.globalPrimaryRedColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
          ),
            SizedBox(height: 20.h),
          Text(
            '생년월일',
            style: AppTextStyle.subheadingBold
                .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
          ),
            TextFormField(
              keyboardType: TextInputType.numberWithOptions(decimal: false, signed: false), // 넘버패드만
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              textInputAction: TextInputAction.next,
              onChanged: (value) {
                setState(() {
                  if (value.isEmpty) {
                    _birthError = null;
                    _isBirthValid = false;
                  } else if (!RegExp(r'^\d{8}$').hasMatch(value)) {
                    _birthError = '생년월일은 8자리(YYYYMMDD)로 입력해주세요.';
                    _isBirthValid = false;
                  } else {
                    try {
                      final year = int.parse(value.substring(0, 4));
                      final month = int.parse(value.substring(4, 6));
                      final day = int.parse(value.substring(6, 8));
                      final date = DateTime(year, month, day);
                      if (date.year != year || date.month != month || date.day != day) {
                        _birthError = '올바른 날짜를 입력해주세요.';
                        _isBirthValid = false;
                      } else {
                        _birthError = null;
                        _isBirthValid = true;
                      }
                    } catch (_) {
                      _birthError = '올바른 날짜를 입력해주세요.';
                      _isBirthValid = false;
                    }
                  }
                });
                _updateFormValidation();
                
                if (value.length == 8) {
                  try {
                    final year = int.parse(value.substring(0, 4));
                    final month = int.parse(value.substring(4, 6));
                    final day = int.parse(value.substring(6, 8));
                    final birthDate = DateTime(year, month, day);
                    context.read<SignUpBloc>().add(SetBirthDate(birthDate));
                  } catch (e) {
                    // 무시
                  }
                }
              },
              // 생년월일 validator
              validator: (value) {
                return null;
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                errorStyle: TextStyle(height: 1, fontSize: 12, color: GlobalMainColor.globalPrimaryRedColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainGrey.grey200,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainYellow.yellow200,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainColor.globalPrimaryRedColor,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                      color: GlobalMainColor.globalPrimaryRedColor,
                  ),
                ),
                hintText: 'Y Y Y Y D D M M',
                hintStyle: TextStyle(
                  color: GlobalMainGrey.grey300,
                  fontSize: 14.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.28,
                ),
              ),
            ),
            if (_birthError != null)
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Row(
                  children: [
                    Icon(Icons.warning, color: GlobalMainColor.globalPrimaryRedColor, size: 16),
                    SizedBox(width: 4),
                    Text(
                      _birthError!,
                      style: TextStyle(
                        color: GlobalMainColor.globalPrimaryRedColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
          ),
            SizedBox(height: 20.h),
          Text(
            '전화번호',
            style: AppTextStyle.subheadingBold
                .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
          ),
            TextFormField(
              controller: _phoneNumberController,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                setState(() {
                  if (value.isEmpty) {
                    _phoneError = null;
                    _isPhoneValid = false;
                  } else if (!RegExp(r'^\d{11}$').hasMatch(value)) {
                    _phoneError = '전화번호는 11자리 숫자로 입력해주세요.';
                    _isPhoneValid = false;
                  } else {
                    _phoneError = null;
                    _isPhoneValid = true;
                  }
                });
                _updateFormValidation();
                context.read<SignUpBloc>().add(SetPhoneNumber(value));
              },
              // 전화번호 validator
              validator: (value) {
                return null;
              },
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                errorStyle: TextStyle(height: 1, fontSize: 12, color: GlobalMainColor.globalPrimaryRedColor),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainGrey.grey200,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainYellow.yellow200,
                  ),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainColor.globalPrimaryRedColor,
                  ),
                ),
                focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(
                      width: 2,
                      color: GlobalMainColor.globalPrimaryRedColor,
                  ),
                ),
                hintText: '전화번호를 입력해주세요.',
                hintStyle: TextStyle(
                  color: GlobalMainGrey.grey300,
                  fontSize: 14.sp,
                  fontFamily: 'Pretendard',
                  fontWeight: FontWeight.w500,
                  letterSpacing: -0.28,
                ),
              ),
            ),
            if (_phoneError != null)
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Row(
                  children: [
                    Icon(Icons.warning, color: GlobalMainColor.globalPrimaryRedColor, size: 16),
                    SizedBox(width: 4),
                    Text(
                      _phoneError!,
                      style: TextStyle(
                        color: GlobalMainColor.globalPrimaryRedColor,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
          ),
            SizedBox(height: 8.h),
          Text(
            '성별',
            style: AppTextStyle.subheadingBold
                .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    list['man'] = true;
                    list['woman'] = false;
                    list['notSelect'] = false;
                    _isGenderSelected = true;
                  });
                  _updateFormValidation();
                  context.read<SignUpBloc>().add(SetGender('남자'));
                },
                child: Container(
                  width: 102.w,
                  height: 45.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: list['man']!
                            ? GlobalMainColor.globalMainColor
                            : GlobalMainGrey.grey200,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    '남성',
                    style: AppTextStyle.body1Medium.copyWith(
                      color: GlobalMainColor.globalPrimaryBlackColor,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    list['man'] = false;
                    list['woman'] = true;
                    list['notSelect'] = false;
                    _isGenderSelected = true;
                  });
                  _updateFormValidation();
                  context.read<SignUpBloc>().add(SetGender('여자'));
                },
                child: Container(
                  width: 102.w,
                  height: 45.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: list['woman']!
                            ? GlobalMainColor.globalMainColor
                            : GlobalMainGrey.grey200,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    '여성',
                    style: AppTextStyle.body1Medium.copyWith(
                      color: GlobalMainColor.globalPrimaryBlackColor,
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    list['man'] = false;
                    list['woman'] = false;
                    list['notSelect'] = true;
                    _isGenderSelected = true;
                  });
                  _updateFormValidation();
                  context.read<SignUpBloc>().add(SetGender('미선택'));
                },
                child: Container(
                  width: 102.w,
                  height: 45.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: list['notSelect']!
                            ? GlobalMainColor.globalMainColor
                            : GlobalMainGrey.grey200,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Text(
                    '미선택',
                    style: AppTextStyle.body1Medium.copyWith(
                      color: GlobalMainColor.globalPrimaryBlackColor,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
        ),
      ),
    );
  }

  String? _validateName(String? value) {
    if (value == null || value.isEmpty) return '이름을 입력해주세요.';
    if (!RegExp(r'^[가-힣]{2,10}$').hasMatch(value)) {
      return '이름은 완성형 한글 2~10자만 입력 가능합니다.';
    }
    return null;
  }

  String? _validateDisplayName(String? value) {
    if (value == null || value.isEmpty) return '닉네임을 입력해주세요.';
    if (!RegExp(r'^[가-힣a-zA-Z0-9]{2,10}$').hasMatch(value)) {
      return '닉네임은 한글/영문/숫자 2~10자만 입력 가능합니다.';
    }
    return null;
  }

  String? _validateBirth(String? value) {
    if (value == null || value.isEmpty) return '생년월일을 입력해주세요.';
    if (!RegExp(r'^\d{8}$').hasMatch(value)) {
      return '생년월일은 8자리(YYYYMMDD)로 입력해주세요.';
    }
    try {
      final year = int.parse(value.substring(0, 4));
      final month = int.parse(value.substring(4, 6));
      final day = int.parse(value.substring(6, 8));
      final date = DateTime(year, month, day);
      if (date.year != year || date.month != month || date.day != day) {
        return '올바른 날짜를 입력해주세요.';
      }
    } catch (_) {
      return '올바른 날짜를 입력해주세요.';
    }
    return null;
  }

  String? _validatePhone(String? value) {
    if (value == null || value.isEmpty) return '전화번호를 입력해주세요.';
    if (!RegExp(r'^\d{11}$').hasMatch(value)) {
      return '전화번호는 11자리 숫자로 입력해주세요.';
    }
    return null;
  }
}

