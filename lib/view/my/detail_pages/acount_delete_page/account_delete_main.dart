part of 'account_delete_page.dart';

class _Main extends StatefulWidget {
  const _Main({super.key});

  @override
  State<_Main> createState() => _MainState();
}

class _MainState extends State<_Main> {
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  String text = '';

  Object firstDialog() {
    return showGeneralDialog(
      context: context,
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Container(
            padding: EdgeInsets.only(top: 43, bottom: 18.4),
            width: 313.w,
            height: 181.h,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Material(
              color: Colors.white,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 27),
                    child: Text(
                      '정말 탈퇴를 진행하시겠습니까?',
                      style: AppTextStyle.heading3Bold.copyWith(
                        color: GlobalMainColor.globalPrimaryBlackColor,
                        letterSpacing: -0.84,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context).pop();
                          secondDialog();
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
      },
    );
  }

  Object secondDialog() {
    return showGeneralDialog(
      context: context,
      barrierDismissible: true,
      barrierLabel: '',
      pageBuilder: (context, animation, secondaryAnimation) {
        return Center(
          child: Container(
            padding: EdgeInsets.only(top: 28, bottom: 16.8),
            width: 313.w,
            height: 163.h,
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
                      '탈퇴가 완료되었습니다.',
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
                      '이용해 주셔서 감사합니다!',
                      style: AppTextStyle.subheadingBold.copyWith(
                        color: GlobalMainGrey.grey300,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    ).then(
      (_) {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => SizedBox(), //LoginPage로 route
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _key,
      child: Stack(
        children: [
          Column(
            children: [
              Text(
                '탈퇴를 위해 아래 문장을 따라 입력해주세요',
                style: AppTextStyle.heading3Bold.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                  letterSpacing: -0.84,
                ),
              ),
              SizedBox(height: 26.h),
              SizedBox(
                width: 342.h,
                height: 45.h,
                child: TextFormField(
                  controller: _controller,
                  onChanged: (value) {
                    setState(() {
                      text = value;
                    });
                  },
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
                        color: GlobalMainYellow.yellow200,
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(
                          width: 2,
                          color: GlobalMainColor.globalPrimaryRedColor,
                        )),
                    hintText: '탈퇴하겠습니다.',
                    hintStyle: AppTextStyle.body2Medium.copyWith(
                      color: GlobalMainGrey.grey300,
                      height: null,
                      letterSpacing: -0.28,
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(height: 681.h),
              GestureDetector(
                onTap: () {
                  if (text == '탈퇴하겠습니다.') {
                    firstDialog();
                  }
                },
                child: Container(
                  width: 342.w,
                  height: 46.h,
                  decoration: ShapeDecoration(
                    color: (text == '탈퇴하겠습니다.')
                        ? GlobalMainColor.globalButtonColor
                        : GlobalMainGrey.grey200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '다음으로',
                    style: AppTextStyle.body1Bold.copyWith(
                      color: Colors.white,
                      letterSpacing: -0.32,
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
