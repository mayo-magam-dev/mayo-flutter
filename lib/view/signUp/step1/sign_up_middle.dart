part of 'sign_up_step1_page.dart';

class _SignUpMiddle extends StatelessWidget {
  const _SignUpMiddle();

  Future<void> _showTermsBottomSheet(BuildContext context, int index) async {
    final List<String> titles = [
      '이용약관',
      '개인정보처리방침',
      '마케팅 정보 수신 동의',
    ];
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return FutureBuilder<List<Board>>(
          future: BoardDataSource().getTermsBoard(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Center(child: CircularProgressIndicator()),
              );
            }
            if (snapshot.hasError || !snapshot.hasData || snapshot.data!.length <= index) {
              return SizedBox(
                height: MediaQuery.of(context).size.height * 0.9,
                child: Center(child: Text('약관을 불러오지 못했습니다')),
              );
            }
            // index 1과 2의 내용을 서로 바꿔서 보여줌
            List<Board> boards = List.from(snapshot.data!);
            if (boards.length > 2) {
              final temp = boards[1];
              boards[1] = boards[2];
              boards[2] = temp;
            }
            final Board board = boards[index];
            final List<String> contentSplited = board.content.split('\n');
            return Container(
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              child: Column(
                children: [
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: GlobalMainGrey.grey50,
                      borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(Icons.close_outlined, size: 30),
                        ),
                        Expanded(
                          child: Text(
                            titles[index],
                            textAlign: TextAlign.center,
                            style: AppTextStyle.subheadingMedium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.36,
                            ),
                          ),
                        ),
                        SizedBox(width: 48),
                      ],
                    ),
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            contentSplited.isNotEmpty ? contentSplited.first : '',
                            style: AppTextStyle.heading2Bold.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.48,
                            ),
                          ),
                          SizedBox(height: 16),
                          Text(
                            contentSplited.length > 1 ? contentSplited.sublist(1).join('\n') : '',
                            style: AppTextStyle.body2Medium.copyWith(
                              color: GlobalMainColor.globalPrimaryBlackColor,
                              letterSpacing: -0.28,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SignUpBloc, SignUpState>(
      builder: (context, state) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      context.read<SignUpBloc>().add(SetAllAgreements(
                          !state.agreeTerms1 || !state.agreeTerms2));
                    },
                    child: SvgPicture.asset(state.agreeTerms1 &&
                            state.agreeTerms2 &&
                            state.agreeMarketing
                        ? 'assets/icons/checked.svg'
                        : 'assets/icons/unchecked.svg'),
                  ),
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
                          context
                              .read<SignUpBloc>()
                              .add(SetTermsAgreement(!state.agreeTerms1));
                        },
                        child: SvgPicture.asset(state.agreeTerms1
                            ? 'assets/icons/checked.svg'
                            : 'assets/icons/unchecked.svg'),
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
                    onTap: () => _showTermsBottomSheet(context, 0),
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
                          context
                              .read<SignUpBloc>()
                              .add(SetPrivacyAgreement(!state.agreeTerms2));
                        },
                        child: SvgPicture.asset(state.agreeTerms2
                            ? 'assets/icons/checked.svg'
                            : 'assets/icons/unchecked.svg'),
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
                    onTap: () => _showTermsBottomSheet(context, 1),
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
                          context.read<SignUpBloc>().add(
                              SetMarketingAgreement(!state.agreeMarketing));
                        },
                        child: SvgPicture.asset(state.agreeMarketing
                            ? 'assets/icons/checked.svg'
                            : 'assets/icons/unchecked.svg'),
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
                    onTap: () => _showTermsBottomSheet(context, 2),
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
          ],
        );
      },
    );
  }
}
