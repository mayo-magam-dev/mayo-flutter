part of 'profile_page.dart';

class _InfoTable extends StatelessWidget {
  const _InfoTable({
    required this.userData,
  });

  final ReadUser? userData;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 276.3.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(
                  width: 1,
                  color: Colors.black.withValues(alpha: 0.3),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    height: 54.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '닉네임',
                          style: AppTextStyle.body1Medium.copyWith(
                            color: GlobalMainColor.globalPrimaryBlackColor,
                          ),
                        ),
                        Row(
                          children: [
                            Text(
                              userData?.displayName ?? '',
                              style: AppTextStyle.body1Medium.copyWith(
                                color: GlobalMainGrey.grey500,
                              ),
                            ),
                            Icon(
                              Icons.keyboard_arrow_right_rounded,
                              size: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.5,
                        color: Colors.black.withValues(alpha: 0.3),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  height: 54.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '이름',
                        style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainColor.globalPrimaryBlackColor,
                        ),
                      ),
                      Text(
                        userData?.name ?? '',
                        style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainGrey.grey500,
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
                        color: Colors.black.withValues(alpha: 0.3),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  height: 54.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '이메일',
                        style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainColor.globalPrimaryBlackColor,
                        ),
                      ),
                      Text(
                        userData?.email ?? '',
                        style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainGrey.grey500,
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
                        color: Colors.black.withValues(alpha: 0.3),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  height: 54.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '생년월일',
                        style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainColor.globalPrimaryBlackColor,
                        ),
                      ),
                      Text(
                        '2000.08.30',
                        style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainGrey.grey500,
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
                        color: Colors.black.withValues(alpha: 0.3),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                  height: 54.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '성별',
                        style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainColor.globalPrimaryBlackColor,
                        ),
                      ),
                      Text(
                        '${userData?.gender}',
                        style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainGrey.grey500,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 14.h),
          Container(
            width: double.infinity,
            height: 130.h,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
                side: BorderSide(
                  width: 1,
                  color: Colors.black.withValues(alpha: 0.3),
                ),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 24),
                  height: 63.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '마케팅 알림 수신',
                        style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainColor.globalPrimaryBlackColor,
                        ),
                      ),
                      _AgreeMarketingButton(
                          agreeMarketing: userData?.agreeMarketing),
                    ],
                  ),
                ),
                Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 0.5,
                        color: Colors.black.withValues(alpha: 0.3),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TermsPolicyListsPage(),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    height: 63.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '약관 및 정책',
                          style: AppTextStyle.body1Medium.copyWith(
                            color: GlobalMainColor.globalPrimaryBlackColor,
                          ),
                        ),
                        Icon(Icons.keyboard_arrow_right_rounded, size: 20),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _AgreeMarketingButton extends StatefulWidget {
  const _AgreeMarketingButton({required this.agreeMarketing});

  final bool? agreeMarketing;

  @override
  State<_AgreeMarketingButton> createState() => _AgreeMarketingButtonState();
}

class _AgreeMarketingButtonState extends State<_AgreeMarketingButton> {
  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
      activeTrackColor: Color(0xFFFFC600), //on
      inactiveTrackColor: Color(0xFFD1D1D1), //off
      value: widget.agreeMarketing ?? false,
      onChanged: (value) {
        showGeneralDialog(
          context: context,
          pageBuilder: (context, animation, secondaryAnimation) {
            return _bottomSheet(context);
          },
        );
      },
    );
  }

  Center _bottomSheet(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.only(top: 28, bottom: 16.8),
        width: 313.w,
        height: 250.h,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Material(
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 27),
                child: Text(
                  '알람을 끄시겠습니까?',
                  style: AppTextStyle.heading2Bold.copyWith(
                    color: GlobalMainColor.globalPrimaryBlackColor,
                    letterSpacing: -0.48,
                  ),
                ),
              ),
              SizedBox(height: 19.h),
              Padding(
                padding: EdgeInsets.only(left: 27),
                child: Text(
                  '수신 알림을 끄시면 마요가 제공하는\n유익한 서비스뿐만 아니라\n중요한 주문 알림을 놓칠 수 있습니다.',
                  style: AppTextStyle.subheadingBold.copyWith(
                    color: GlobalMainGrey.grey300,
                  ),
                ),
              ),
              SizedBox(height: 21.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                      setState(() {
                        UserDataSource()
                            .putAgreeMarketing(!widget.agreeMarketing!);
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.only(right: 11.3),
                      width: 128.9,
                      height: 56.1,
                      decoration: ShapeDecoration(
                        color: GlobalMainColor.globalPrimaryRedColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '예',
                        style: AppTextStyle.body1Bold.copyWith(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      width: 128.9,
                      height: 56.1,
                      decoration: ShapeDecoration(
                        color: GlobalMainGrey.grey200,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        '아니오',
                        style: AppTextStyle.body1Bold.copyWith(
                          color: GlobalMainColor.globalPrimaryBlackColor,
                          letterSpacing: -0.32,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
