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
        child: Column(
          children: [
            topBar,
            const Divider(height: 1, color: GlobalMainGrey.grey200),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 50.h),
                    header,
                    SizedBox(height: 32.h),
                    middle,
                    SizedBox(height: 40.h),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(
                24.w,
                0,
                24.w,
                MediaQuery.of(context).padding.bottom + 24.h,
              ),
              child: nextButton,
            ),
          ],
        ),
      ),
    );
  }
}
