part of 'myorder_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.content,
    required this.bottomBar,
  });
  final Widget topBar;
  final Widget content;
  final Widget bottomBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          topBar,
          content,
          SizedBox(height: 30.h),
          bottomBar,
        ],
      ),
    )));
  }
}
