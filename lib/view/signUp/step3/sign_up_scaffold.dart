part of 'sign_up_step3_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.header,
    required this.middle,
    required this.nextButton,
  });

  final Widget topBar;
  final Widget header;
  final Widget middle;
  final Widget nextButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              topBar,
              SizedBox(height: 32.h),
              header,
              SizedBox(height: 40.h),
              middle,
            ],
          ),
        ),
      ),
      bottomNavigationBar: SafeArea(
        minimum: EdgeInsets.fromLTRB(24.w, 0, 24.w, 57.h), // 좌우 마진 & 아래 패딩
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0), // 버튼 위쪽 간격 추가
          child: SizedBox(
            height: 46.h, // 원하는 버튼 높이 (혹은 Button 내부에 고정 높이)
            child: nextButton,
          ),
        ),
      ),
    );
  }
}
