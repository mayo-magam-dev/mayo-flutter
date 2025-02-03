part of 'cart_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.content,
    required this.requestButton,
  });
  final Widget topBar;
  final Widget content;
  final Widget requestButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          topBar,
          content,
          SizedBox(height: 105.h),
          requestButton,
        ],
      ),
    )));
  }
}
