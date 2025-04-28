part of 'account_delete_page.dart';

class _Main extends StatefulWidget {
  @override
  State<_Main> createState() => _MainState();
}

class _MainState extends State<_Main> {
  static const String _deleteConfirmText = '탈퇴하겠습니다.';

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();
  String _inputText = '';

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Text(
            '탈퇴를 위해 아래 문장을 따라 입력해주세요',
            style: AppTextStyle.heading3Bold.copyWith(
              color: GlobalMainColor.globalPrimaryBlackColor,
              letterSpacing: -0.84,
            ),
          ),
          SizedBox(height: 26.h),
          _buildInputField(),
          SizedBox(height: 559.h),
          _buildNextButton(),
        ],
      ),
    );
  }

  Widget _buildInputField() {
    return SizedBox(
      width: 342.h,
      height: 45.h,
      child: TextFormField(
        controller: _controller,
        onChanged: (value) => setState(() => _inputText = value),
        onTapOutside: (_) => FocusScope.of(context).unfocus(),
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
            ),
          ),
          hintText: _deleteConfirmText,
          hintStyle: AppTextStyle.body2Medium.copyWith(
            color: GlobalMainGrey.grey300,
            letterSpacing: -0.28,
            height: 1.4,
          ),
        ),
      ),
    );
  }

  Widget _buildNextButton() {
    final bool isEnabled = _inputText == _deleteConfirmText;

    return GestureDetector(
      onTap: isEnabled
          ? () {
              showGeneralDialog(
                context: context,
                pageBuilder: (context, animation, secondaryAnimation) =>
                    _DeleteConfirmDialog(),
              );
            }
          : null,
      child: Container(
        width: 342.w,
        height: 46.h,
        decoration: ShapeDecoration(
          color: isEnabled
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
    );
  }
}

class _DeleteConfirmDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 43, bottom: 18.4),
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
                  _DialogButton(
                    text: '예',
                    backgroundColor: GlobalMainColor.globalPrimaryRedColor,
                    textColor: Colors.white,
                    onTap: () {
                      // context.pop();
                      try {
                        UserDataSource().deleteUser();
                        context.read<LoginBloc>().add(UserAccountDelete());
                        FirebaseAuth.instance.signOut();
                        context.read<SignUpBloc>().add(DeleteData());
                        context.go('/login');
                        
                      } catch (e) {
                        // throw Exception(e);
                      }
                      // showGeneralDialog(
                      //   context: context,
                      //   barrierDismissible: true,
                      //   barrierLabel: '',
                      //   pageBuilder: (context, _, __) =>
                      //       const _DeleteCompleteDialog(),
                      // ).then(
                      //   (_) {
                      //     currentContext.go('/');
                      //   },
                      // );
                    },
                    margin: const EdgeInsets.only(right: 11.3),
                  ),
                  _DialogButton(
                    text: '아니오',
                    backgroundColor: GlobalMainGrey.grey200,
                    textColor: GlobalMainColor.globalPrimaryBlackColor,
                    onTap: () => context.pop(),
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

class _DeleteCompleteDialog extends StatelessWidget {
  const _DeleteCompleteDialog();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.only(top: 28, bottom: 16.8),
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
                padding: const EdgeInsets.only(left: 27),
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
  }
}

class _DialogButton extends StatelessWidget {
  const _DialogButton({
    required this.text,
    required this.backgroundColor,
    required this.textColor,
    required this.onTap,
    this.margin,
  });

  final String text;
  final Color backgroundColor;
  final Color textColor;
  final VoidCallback onTap;
  final EdgeInsets? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: margin,
        width: 128.9,
        height: 56.1,
        decoration: ShapeDecoration(
          color: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        alignment: Alignment.center,
        child: Text(
          text,
          style: AppTextStyle.body1Bold.copyWith(
            color: textColor,
            letterSpacing: -0.32,
          ),
        ),
      ),
    );
  }
}
