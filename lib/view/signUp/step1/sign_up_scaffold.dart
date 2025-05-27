part of 'sign_up_step1_page.dart';

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
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: 24.w,
            right: 24.w,
            bottom: MediaQuery.of(context).padding.bottom + 100.h, // ✅ 핵심
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              topBar,
              const Divider(height: 1, color: GlobalMainGrey.grey200),
              SizedBox(height: 50.h),
              header,
              SizedBox(height: 32.h),
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
