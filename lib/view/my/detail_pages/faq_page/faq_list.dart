part of 'faq_page.dart';

class _List extends StatefulWidget {
  //ignore: unused_element
  const _List({super.key});

  @override
  State<_List> createState() => _ListState();
}

class _ListState extends State<_List> {
  Map indexList = {
    'first': true,
    'second': false,
    'third': false,
    'fourth': false,
    'fifth': false,
    'sixth': false,
  };
  String selectedIndex = 'first';

  Widget category(String text, String sequence) {
    return GestureDetector(
      onTap: () {
        setState(() {
          indexList[selectedIndex] = false;
          indexList[sequence] = !indexList[sequence];
          selectedIndex = sequence;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 8),
        width: 96.w,
        height: 39.h,
        decoration: ShapeDecoration(
          color:
              indexList[sequence] ? Color(0xFFFFC600) : GlobalMainGrey.grey100,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(100),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: indexList[sequence]
              ? AppTextStyle.body1Bold.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.32,
                )
              : AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15,
            vertical: 22,
          ),
          height: 83.h,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              category('회원 정보', 'first'),
              category('주문 관련', 'second'),
              category('서비스 이용', 'third'),
              category('결제/환불', 'fourth'),
              category('쿠폰/이벤트', 'fifth'),
              category('기타', 'sixth'),
            ],
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.5,
                color: GlobalMainGrey.grey200,
              ),
            ),
          ),
        ),
        indexList['first']
            ? Column(
                children: [
                  Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      trailing: SizedBox(),
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/icons/question.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            "개인정보를 수정하고 싶어요.",
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          width: double.infinity,
                          height: 57.h,
                          decoration: BoxDecoration(
                            color: GlobalMainGrey.grey100,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          color: GlobalMainGrey.grey200,
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      trailing: SizedBox(),
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/icons/question.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            "이름을 변경하고 싶어요.",
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          width: double.infinity,
                          height: 57.h,
                          decoration: BoxDecoration(
                            color: GlobalMainGrey.grey100,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          color: GlobalMainGrey.grey200,
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      trailing: SizedBox(),
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/icons/question.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            "이메일을 변경하고 싶어요.",
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          width: double.infinity,
                          height: 57.h,
                          decoration: BoxDecoration(
                            color: GlobalMainGrey.grey100,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          color: GlobalMainGrey.grey200,
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      trailing: SizedBox(),
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/icons/question.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            "회원 탈퇴는 어떻게 하나요?",
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          width: double.infinity,
                          height: 57.h,
                          decoration: BoxDecoration(
                            color: GlobalMainGrey.grey100,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          color: GlobalMainGrey.grey200,
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      trailing: SizedBox(),
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/icons/question.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            "탈퇴 시 개인정보 모두 삭제되나요?",
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          width: double.infinity,
                          height: 57.h,
                          decoration: BoxDecoration(
                            color: GlobalMainGrey.grey100,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          color: GlobalMainGrey.grey200,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : SizedBox(),
        indexList['third']
            ? Column(
                children: [
                  Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      trailing: SizedBox(),
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/icons/question.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            "가게 정보에 있는 '하트'는 어떤 기능인가요?",
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          width: double.infinity,
                          height: 57.h,
                          decoration: BoxDecoration(
                            color: GlobalMainGrey.grey100,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          color: GlobalMainGrey.grey200,
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      trailing: SizedBox(),
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/icons/question.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            "가게 정보에 있는 '종'은 어떤 기능인가요?",
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          width: double.infinity,
                          height: 57.h,
                          decoration: BoxDecoration(
                            color: GlobalMainGrey.grey100,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          color: GlobalMainGrey.grey200,
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      trailing: SizedBox(),
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/icons/question.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            "푸시 알림 안 받고 싶어요.",
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          width: double.infinity,
                          height: 57.h,
                          decoration: BoxDecoration(
                            color: GlobalMainGrey.grey100,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '핸드폰 설정에서 마요 앱 알림을 꺼주세요.',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          color: GlobalMainGrey.grey200,
                        ),
                      ),
                    ),
                  ),
                  Theme(
                    data:
                        ThemeData().copyWith(dividerColor: Colors.transparent),
                    child: ExpansionTile(
                      trailing: SizedBox(),
                      title: Row(
                        children: [
                          SvgPicture.asset('assets/icons/question.svg'),
                          SizedBox(width: 10.w),
                          Text(
                            "메뉴 옵션 추가는 어떻게 하나요?",
                            style: AppTextStyle.body1Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.32,
                            ),
                          ),
                        ],
                      ),
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 24,
                          ),
                          width: double.infinity,
                          height: 124.h,
                          decoration: BoxDecoration(
                            color: GlobalMainGrey.grey100,
                          ),
                          alignment: Alignment.centerLeft,
                          child: Text(
                            '옵션 추가는 메뉴마다 상이해요. 가게의 공지사항을 꼭! 확인해주시고 그에 맞는 옵션을 추가해주세요.\n(가게 공지사항을 참고해서 요청사항에 기입해 주세요)\n예 (수타짱 치즈 크러스트 추가)',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(
                          width: 0.5,
                          color: GlobalMainGrey.grey200,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : SizedBox()
      ],
    );
  }
}
