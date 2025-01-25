part of 'store_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.infoHeader,
    required this.infoMiddle,
  });
  final Widget topBar;
  final Widget infoHeader;
  final Widget infoMiddle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          topBar,
          infoHeader,
          infoMiddle,
        ],
      ),
    )));
  }
}
