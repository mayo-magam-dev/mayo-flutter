part of 'faq_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.list,
  });
  final Widget topBar;
  final Widget list;

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
            list,
          ],
        ),
      ),
    );
  }
}
