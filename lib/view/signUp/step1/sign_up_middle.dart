part of 'sign_up_step1_page.dart';

class _SignUpMiddle extends StatefulWidget {
  //ignore: unused_element
  const _SignUpMiddle({super.key});

  @override
  State<_SignUpMiddle> createState() => _SignUpMiddleState();
}

class _SignUpMiddleState extends State<_SignUpMiddle> {
  Map list = {
    'first': false,
    'second': false,
    'third': false,
  };

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28),
          child: Row(
            children: [
              GestureDetector(
                  onTap: () {},
                  child: SvgPicture.asset('assets/icons/unchecked.svg')),
              SizedBox(width: 16),
              Text(
                '네, 모두 동의합니다.',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(20, 20, 20, 27),
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                color: Color(0xFFD1D1D1),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 28, right: 37),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        list['first'] = !list['first'];
                      });
                    },
                    child: list['first']
                        ? SvgPicture.asset('assets/icons/checked.svg')
                        : SvgPicture.asset('assets/icons/unchecked.svg'),
                  ),
                  SizedBox(width: 16),
                  Text(
                    '서비스 이용약관 동의 (필수)',
                    style: AppTextStyle.body2Medium.copyWith(
                      color: GlobalMainColor.globalPrimaryBlackColor,
                      letterSpacing: -0.28,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    isScrollControlled: true,
                    context: context,
                    builder: (context) {
                      return SizedBox(
                        height: 751.h,
                        child: Column(
                          children: [
                            Container(
                              height: 60.h,
                              decoration: BoxDecoration(
                                color: GlobalMainGrey.grey50,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(20),
                                ),
                              ),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(
                                    onPressed: () => Navigator.pop(context),
                                    icon: Icon(
                                      Icons.close_outlined,
                                      size: 30,
                                    ),
                                  ),
                                  Text(
                                    'mayo 서비스 이용 약관',
                                    style:
                                        AppTextStyle.subheadingMedium.copyWith(
                                      color: GlobalMainColor
                                          .globalPrimaryBlackColor,
                                      letterSpacing: -0.36,
                                    ),
                                  ),
                                  SizedBox(width: 48),
                                ],
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              height: 691.h,
                              padding: EdgeInsets.symmetric(
                                  horizontal: 24, vertical: 18),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'mayo(마감해요) 이용 약관',
                                    style: AppTextStyle.heading2Bold.copyWith(
                                      color: GlobalMainColor
                                          .globalPrimaryBlackColor,
                                      letterSpacing: -0.48,
                                    ),
                                  ),
                                  SizedBox(height: 16.h),
                                  Text(
                                    "제 1조(목적)\n\n\n본 약관은 본 약관은 'mayo(마감해요)'(이하 '회사'라 함)가 운영하는 'mayo(마감해요) 서비스'(이하 '서비스'라 함)와 관련하여 '회사'와 '이용자'간에 서비스의 이용조건 및 절차, '회사'와 '회원'간의 권리, 의무 및 책임 사항을 규정함을 목적으로 합니다.",
                                    style: AppTextStyle.body2Medium.copyWith(
                                      color: GlobalMainColor
                                          .globalPrimaryBlackColor,
                                      letterSpacing: -0.28,
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
                },
                child: Text(
                  '보기',
                  style: AppTextStyle.captionMedium.copyWith(
                    color: GlobalMainGrey.grey300,
                    letterSpacing: -0.24,
                    decoration: TextDecoration.underline,
                    decorationColor: GlobalMainGrey.grey300,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: const EdgeInsets.only(left: 28, right: 37),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        list['second'] = !list['second'];
                      });
                    },
                    child: list['second']
                        ? SvgPicture.asset('assets/icons/checked.svg')
                        : SvgPicture.asset('assets/icons/unchecked.svg'),
                  ),
                  SizedBox(width: 16),
                  Text(
                    '개인정보 처리 방침 보기 (필수)',
                    style: AppTextStyle.body2Medium.copyWith(
                      color: GlobalMainColor.globalPrimaryBlackColor,
                      letterSpacing: -0.28,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  '보기',
                  style: AppTextStyle.captionMedium.copyWith(
                    color: GlobalMainGrey.grey300,
                    letterSpacing: -0.24,
                    decoration: TextDecoration.underline,
                    decorationColor: GlobalMainGrey.grey300,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 30.h),
        Padding(
          padding: const EdgeInsets.only(left: 28, right: 37),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        list['third'] = !list['third'];
                      });
                    },
                    child: list['third']
                        ? SvgPicture.asset('assets/icons/checked.svg')
                        : SvgPicture.asset('assets/icons/unchecked.svg'),
                  ),
                  SizedBox(width: 16),
                  Text(
                    '마케팅 정보 메일, SMS 수신 동의 (선택)',
                    style: AppTextStyle.body2Medium.copyWith(
                      color: GlobalMainColor.globalPrimaryBlackColor,
                      letterSpacing: -0.28,
                    ),
                  ),
                ],
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  '보기',
                  style: AppTextStyle.captionMedium.copyWith(
                    color: GlobalMainGrey.grey300,
                    letterSpacing: -0.24,
                    decoration: TextDecoration.underline,
                    decorationColor: GlobalMainGrey.grey300,
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 228.h),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 24),
          width: double.infinity,
          height: 46,
          decoration: ShapeDecoration(
            color: list['first'] && list['second']
                ? GlobalMainYellow.yellow200
                : GlobalMainGrey.grey200,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
    );
  }
}
