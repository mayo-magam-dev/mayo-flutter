part of 'home_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.header,
    required this.middle,
    required this.bottom,
    required this.bottomBar,
  });

  final Widget topBar;
  final Widget header;
  final Widget middle;
  final Widget bottom;
  final Widget bottomBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: topBar,
      ),
      body: Column(
        children: [
          Stack(
            children: [
              header,
              middle,
            ],
          ),
          bottom,
        ],
      ),
      bottomNavigationBar: bottomBar,
    );
  }
}
