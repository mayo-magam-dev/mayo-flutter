part of 'announcement_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.announcemntLists,
  });
  final Widget topBar;
  final Widget announcemntLists;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
            announcemntLists,
          ],
        ),
      ),
    );
  }
}
