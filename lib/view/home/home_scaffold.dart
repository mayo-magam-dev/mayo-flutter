part of 'home_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.middle,
    required this.bottom,
  });

  final Widget topBar;
  final Widget middle;
  final Widget bottom;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.h),
        child: topBar,

      ),
      body: middle,
      bottomNavigationBar: bottom,
    );
  }
}
