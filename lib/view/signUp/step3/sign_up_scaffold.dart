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
                SizedBox(height: 70.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: nextButton,
                ),
              ],
            ),
          ),
        ),);
  }
}
