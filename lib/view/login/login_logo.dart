part of 'login_page.dart';

class _LoginLogo extends StatelessWidget {
  //ignore: unused_element
  const _LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset('assets/icons/mayo_logo_208x74.svg'),
        SizedBox(height: 5.h),
        Text(
          '환경을 살리는 합리적 소비, 마감할인 플랫폼',
          style: TextStyle(
            color: GlobalMainYellow.yellow200,
            fontSize: 16.sp,
            fontFamily: 'Pretendard',
            fontWeight: FontWeight.w700,
            height: 2.12,
            letterSpacing: -0.32,
          ),
        ),
      ],
    );
  }
}
