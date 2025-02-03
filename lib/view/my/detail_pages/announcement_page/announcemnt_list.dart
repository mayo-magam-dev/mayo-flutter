part of 'announcement_page.dart';

class _Lists extends StatelessWidget {
  //ignore: unused_element
  const _Lists({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'mayo앱 출시 안내',
                style: AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                '2023/07/24',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainGrey.grey600,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.3,
                color: GlobalMainGrey.grey200,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'mayo 카카오톡 서비스 일시 중지 안내',
                style: AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                '2023/07/09',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainGrey.grey600,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.3,
                color: GlobalMainGrey.grey200,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '이용 약관 안내',
                style: AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                '2023/07/09',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainGrey.grey600,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.3,
                color: GlobalMainGrey.grey200,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '개인정보 처리 방침 안내',
                style: AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                '2023/07/09',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainGrey.grey600,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.3,
                color: GlobalMainGrey.grey200,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24,
            vertical: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '마케팅 정보 안내',
                style: AppTextStyle.body1Medium.copyWith(
                  color: GlobalMainColor.globalPrimaryBlackColor,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                '2023/07/09',
                style: AppTextStyle.body2Medium.copyWith(
                  color: GlobalMainGrey.grey600,
                  letterSpacing: -0.28,
                ),
              ),
            ],
          ),
        ),
        Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.3,
                color: GlobalMainGrey.grey200,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
