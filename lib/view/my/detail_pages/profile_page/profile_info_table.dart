part of 'profile_page.dart';

class _InfoTable extends StatefulWidget {

  @override
  State<_InfoTable> createState() => _InfoTableState();
}

class _InfoTableState extends State<_InfoTable> {
  final TextEditingController nickNameController = TextEditingController();

  String nickName = '';

  ReadUser? userData;

  final userDataSource = UserDataSource();

  featchUserData() async {
    final getUserData = await userDataSource.getUser();
    setState(() {
      userData = getUserData;
    });
  }

  @override
  void initState() {
    super.initState();
    featchUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 221.3.h,
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
                  onTap: () {
                    showGeneralDialog(
                      context: context,
                      pageBuilder: (context, animation, secondaryAnimation) {
                        return Center(
                          child: Container(
                            padding: EdgeInsets.only(
                              top: 23.h,
                              bottom: 23.h,
                              left: 18.w,
                              right: 26.w,
                            ),
                            width: 317.w,
                            height: 231.1.h,
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
                                    padding: EdgeInsets.only(left: 8.w),
                                    child: Text(
                                      '닉네임 변경',
                                      style: AppTextStyle.heading2Bold.copyWith(
                                        color: GlobalMainColor
                                            .globalPrimaryBlackColor,
                                        letterSpacing: -0.84,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 18.h),
                                  SizedBox(
                                    width: double.infinity,
                                    height: 51.h,
                                    child: TextFormField(
                                      controller: nickNameController,
                                      onTapOutside: (event) =>
                                          FocusScope.of(context).unfocus(),
                                      textInputAction: TextInputAction.next,
                                      onChanged: (value) {
                                        nickName = value;
                                      },
                                      decoration: InputDecoration(
                                        focusedBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            width: 2,
                                            color: GlobalMainYellow.yellow200,
                                          ),
                                        ),
                                        enabledBorder: OutlineInputBorder(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                          borderSide: BorderSide(
                                            width: 2,
                                            color: GlobalMainGrey.grey200,
                                          ),
                                        ),
                                        hintText: '변경할 닉네임을 작성해주세요',
                                        hintStyle:
                                            AppTextStyle.body2Medium.copyWith(
                                          color: GlobalMainGrey.grey300,
                                          letterSpacing: -0.28,
                                          height: 5,
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 22.h),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      GestureDetector(
                                        onTap: () async {
                                          await userDataSource.putUserNickname(
                                              nickName); //바뀌는데 시간 걸림
                                          featchUserData();
                                          if (context.mounted) {
                                            context.pop();
                                          }
                                        },
                                        child: Container(
                                          margin: EdgeInsets.only(right: 11.w),
                                          width: 128.9,
                                          height: 56.1,
                                          decoration: ShapeDecoration(
                                            color: GlobalMainColor
                                                .globalButtonColor,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            '변경하기',
                                            style:
                                                AppTextStyle.body1Bold.copyWith(
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
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                            ),
                                          ),
                                          alignment: Alignment.center,
                                          child: Text(
                                            '취소',
                                            style:
                                                AppTextStyle.body1Bold.copyWith(
                                              color: GlobalMainColor
                                                  .globalPrimaryBlackColor,
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
                      },
                    );
                  },
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
                        '성별',
                        style: AppTextStyle.body1Medium.copyWith(
                          color: GlobalMainColor.globalPrimaryBlackColor,
                        ),
                      ),
                      Text(
                        userData?.gender ?? 'null',
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
          TextButton(onPressed: (){userDataSource.putAgreeMarketing(true);}, child: Text('on'),),
          TextButton(onPressed: (){userDataSource.putAgreeMarketing(false);}, child: Text('off'),),
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
                    context.push('/terms-list');
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
