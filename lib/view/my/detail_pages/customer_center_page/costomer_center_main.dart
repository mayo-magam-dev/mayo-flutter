part of 'costomer_center_page.dart';

class _Main extends StatelessWidget {
  //ignore: unused_element
  const _Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/mayo_logo.png',
            width: 256.w,
            height: 91.h,
          ),
          SizedBox(height: 20.h),
          Text(
            '불편한 점이 있으신가요?',
            style: AppTextStyle.heading2Bold.copyWith(
              color: GlobalMainColor.globalPrimaryBlackColor,
              letterSpacing: -0.48,
            ),
          ),
          SizedBox(height: 20.h),
          Text(
            '운영 시간 : 평일 09시~18시(공휴일 제외)',
            style: AppTextStyle.body2Medium.copyWith(
              color: GlobalMainGrey.grey600,
              letterSpacing: -0.28,
            ),
          ),
          SizedBox(height: 20.h),
          GestureDetector(
            onTap: () {},
            child: Container(
              width: 260.w,
              height: 50.h,
              decoration: ShapeDecoration(
                color: GlobalMainColor.globalMainColor,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: () =>
                    launchUrl(Uri.parse('http://pf.kakao.com/_pxojzxj/chat')),
                child: Text(
                  '마요 카카오톡 채널',
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
