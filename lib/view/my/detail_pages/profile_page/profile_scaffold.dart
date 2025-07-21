part of 'profile_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.header,
    required this.infoTables,
    required this.accountActions,
  });
  final Widget topBar;
  final Widget header;
  final Widget infoTables;
  final Widget accountActions;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar is PreferredSizeWidget
          ? topBar as PreferredSizeWidget
          : PreferredSize(child: topBar, preferredSize: Size.fromHeight(56)),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
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
            SizedBox(height: 35.h),
            header,
            SizedBox(height: 41.h),
            infoTables,
            SizedBox(height: 70.h),
            accountActions,
          ],
        ),
        ),
      ),
    );
  }
}
