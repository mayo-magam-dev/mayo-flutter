part of 'sign_up_step3_page.dart';

class _SignUpForm extends StatefulWidget {
  //ignore: unused_element
  const _SignUpForm({super.key});

  @override
  State<_SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<_SignUpForm> {
  Map list = {'man': false, 'woman': false, 'notSelect': false};

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
                },
                child: Container(
                  width: 102.w,
                  height: 45.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: list['man']
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
                },
                child: Container(
                  width: 102.w,
                  height: 45.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: list['woman']
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
                },
                child: Container(
                  width: 102.w,
                  height: 45.h,
                  alignment: Alignment.center,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 2,
                        color: list['notSelect']
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
          )
        ],
      ),
    );
  }
}
