part of 'account_delete_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.main,
  });
  final Widget topBar;
  final Widget main;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              topBar,
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
              SizedBox(height: 24.h),
              main,
            ],
          ),
        ),
      ),
    );
  }
}
