part of 'sign_up_step5_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.header,
    required this.decoration,
    required this.submitButton,
  });
  final Widget topBar;
  final Widget header;
  final Widget decoration;
  final Widget submitButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                topBar,
                Container(
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(
                        width: 1,
                        color: GlobalMainGrey.grey200,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100.h),
                header,
                SizedBox(height: 70.h),
                decoration,
              ],
            ),
            Column(
              children: [
                SizedBox(height: 720.h),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: submitButton,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
