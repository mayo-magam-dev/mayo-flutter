part of 'sign_up_step3_page.dart';

class _SignUpForm extends StatefulWidget {
  //ignore: unused_element
  const _SignUpForm({super.key});

  @override
  State<_SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<_SignUpForm> {
  Map<String, bool> list = {'man': false, 'woman': false, 'notSelect': false};

  // 컨트롤러 추가
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _displayNameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();

  @override
  void dispose() {
    _nameController.dispose();
    _displayNameController.dispose();
    _phoneNumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '이름',
            style: AppTextStyle.subheadingBold
                .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
          ),
          SizedBox(height: 5.h),
          SizedBox(
            width: double.infinity,
            height: 45.h,
            child: TextFormField(
              controller: _nameController,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              textInputAction: TextInputAction.next,
              onChanged: (value) {
                context.read<SignUpBloc>().add(SetName(value));
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
                hintText: '김무기',
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
            '닉네임',
            style: AppTextStyle.subheadingBold
                .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
          ),
          SizedBox(height: 5.h),
          SizedBox(
            width: double.infinity,
            height: 45.h,
            child: TextFormField(
              controller: _displayNameController,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              textInputAction: TextInputAction.next,
              onChanged: (value) {
                context.read<SignUpBloc>().add(SetDisplayName(value));
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
          ),
          SizedBox(height: 26.h),
          Text(
            '생년월일',
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
                if (value.length == 8) {
                  try {
                    // YYYYMMDD 형식의 문자열을 DateTime으로 변환
                    final year = int.parse(value.substring(0, 4));
                    final month = int.parse(value.substring(4, 6));
                    final day = int.parse(value.substring(6, 8));

                    final birthDate = DateTime(year, month, day);
                    context.read<SignUpBloc>().add(SetBirthDate(birthDate));
                  } catch (e) {
                    // 날짜 변환 오류 처리
                    // 입력 값이 유효하지 않은 경우 무시
                  }
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
          ),
          SizedBox(height: 26.h),
          Text(
            '전화번호',
            style: AppTextStyle.subheadingBold
                .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
          ),
          SizedBox(height: 5.h),
          SizedBox(
            width: double.infinity,
            height: 45.h,
            child: TextFormField(
              controller: _phoneNumberController,
              onTapOutside: (event) => FocusScope.of(context).unfocus(),
              textInputAction: TextInputAction.next,
              keyboardType: TextInputType.phone,
              onChanged: (value) {
                context.read<SignUpBloc>().add(SetPhoneNumber(value));
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
          ),
          SizedBox(height: 26.h),
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
                  });
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
                  });
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
                  });
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
    );
  }
}
