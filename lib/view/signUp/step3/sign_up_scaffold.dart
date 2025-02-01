part of 'sign_up_step3_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.header,
    required this.form,
    required this.successButton,
  });
  final Widget topBar;
  final Widget header;
  final Widget form;
  final Widget successButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Stack(
            children: [
              Column(
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
                  SizedBox(height: 57.h),
                  header,
                  SizedBox(height: 54.h),
                  form,
                ],
              ),
              Column(
                children: [
                  SizedBox(height: 741.h),
                  successButton,
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
