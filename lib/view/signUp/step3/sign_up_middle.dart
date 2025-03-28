part of 'sign_up_step3_page.dart';

//ignore: unused_element
class _SignUpMiddle extends StatelessWidget {
  const _SignUpMiddle();

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
                '이름',
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
                      ),
                    ),
                    hintText: '이름을 입력해주세요.',
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
              ),
              SizedBox(height: 26.h),
              Text(
                '휴대폰 번호',
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
                      ),
                    ),
                    hintText: '휴대폰 번호를 입력해주세요.',
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
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.read<SignUpBloc>().add(SetGender('male'));
                      },
                      child: Container(
                        height: 45.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: state.gender == 'male'
                                ? GlobalMainYellow.yellow200
                                : GlobalMainGrey.grey200,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            '남성',
                            style: AppTextStyle.body1Medium.copyWith(
                              color: state.gender == 'male'
                                  ? GlobalMainColor.globalPrimaryBlackColor
                                  : GlobalMainGrey.grey300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 8),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        context.read<SignUpBloc>().add(SetGender('female'));
                      },
                      child: Container(
                        height: 45.h,
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: state.gender == 'female'
                                ? GlobalMainYellow.yellow200
                                : GlobalMainGrey.grey200,
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            '여성',
                            style: AppTextStyle.body1Medium.copyWith(
                              color: state.gender == 'female'
                                  ? GlobalMainColor.globalPrimaryBlackColor
                                  : GlobalMainGrey.grey300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
} 