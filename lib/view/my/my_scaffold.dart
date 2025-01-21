part of 'my_page.dart';

// ignore: unused_element
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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            topBar,
            header,
            middle,
          ],
        ),
      ),
      bottomNavigationBar: BottomBar(index: 3),
    );
  }
}
