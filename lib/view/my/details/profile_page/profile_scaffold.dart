part of 'profile.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.header,
    required this.infoTables,
    required this.accountActions,
    required this.bottomBar,
  });
  final Widget topBar;
  final Widget header;
  final Widget infoTables;
  final Widget accountActions;
  final Widget bottomBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            topBar,
            SizedBox(height: 35.h),
            header,
            SizedBox(height: 41.h),
            infoTables,
            accountActions,
          ],
        ),
      ),
      bottomNavigationBar: bottomBar,
    );
  }
}
