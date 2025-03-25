part of 'event_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.eventList,
  });
  final Widget topBar;
  final Widget eventList;

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
            eventList,
          ],
        ),
      ),
    );
  }
}
