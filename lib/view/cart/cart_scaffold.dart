part of 'cart_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.content,
    required this.requestButton,
  });
  final PreferredSizeWidget topBar;
  final Widget content;
  final Widget requestButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: topBar,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              content,
              SizedBox(height: 20.h),
              requestButton,
            ],
          ),
        )));
  }
}
