part of 'terms_policy_page.dart';

class _Lists extends StatelessWidget {
  //ignore: unused_element
  const _Lists({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 22,
          ),
          width: double.infinity,
          height: 66.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '서비스 이용 약관 보기',
                style: AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TermsPolicyPage(),
                    ),
                  );
                },
                child: Text(
                  '[전문 보기]',
                  style: AppTextStyle.body1Medium.copyWith(
                    color: GlobalMainColor.globalPrimaryBlackColor,
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
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 22,
          ),
          width: double.infinity,
          height: 66.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '개인정보 수집 및 이용 동의의',
                style: AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  '[전문 보기]',
                  style: AppTextStyle.body1Medium.copyWith(
                    color: GlobalMainColor.globalPrimaryBlackColor,
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
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 22,
          ),
          width: double.infinity,
          height: 66.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '마케팅 정보 메일, SMS 수신 동의',
                style: AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                ),
              ),
              GestureDetector(
                onTap: () {},
                child: Text(
                  '[전문 보기]',
                  style: AppTextStyle.body1Medium.copyWith(
                    color: GlobalMainColor.globalPrimaryBlackColor,
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
    );
  }
}
