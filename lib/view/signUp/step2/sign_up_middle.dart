part of 'sign_up_step2_page.dart';

class _SignUpMiddle extends StatelessWidget {
  //ignore: unused_element
  const _SignUpMiddle({super.key});

  @override
  Widget build(BuildContext context) {
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
          TextFormField(
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
          SizedBox(height: 26.h),
          Text(
            '비밀번호',
            style: AppTextStyle.subheadingBold
                .copyWith(color: GlobalMainColor.globalPrimaryBlackColor),
          ),
          SizedBox(height: 5.h),
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
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(
                    width: 2,
                    color: GlobalMainColor.globalPrimaryRedColor,
                  )),
              hintText: '비밀번호 (8자 이상, 문자/숫자/기호 사용)',
              hintStyle: TextStyle(
                color: GlobalMainGrey.grey300,
                fontSize: 14.sp,
                fontFamily: 'Pretendard',
                fontWeight: FontWeight.w500,
                letterSpacing: -0.28,
              ),
              suffixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/eye_off.svg'),
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
                onPressed: () {},
                icon: SvgPicture.asset('assets/icons/eye_off.svg'),
              ),
            ),
          ),
          SizedBox(height: 155.h),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            width: double.infinity,
            height: 46,
            decoration: ShapeDecoration(
              color: GlobalMainGrey.grey200,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
            ),
            child: InkWell(
              onTap: () {},
              borderRadius: BorderRadius.circular(10),
              child: Center(
                child: Text(
                  '다음',
                  style: AppTextStyle.body1Bold.copyWith(
                    color: Colors.white,
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
