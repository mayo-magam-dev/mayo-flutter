part of 'sign_up_step2_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.header,
    required this.middle,
  });
  final Widget topBar;
  final Widget header;
  final Widget middle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              topBar,
              SizedBox(height: 84.h),
              header,
              SizedBox(height: 117.h),
              middle,
            ],
          ),
        ),
      ),
    );
  }
}
