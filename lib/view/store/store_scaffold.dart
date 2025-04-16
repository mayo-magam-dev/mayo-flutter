part of 'store_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.infoHeader,
    required this.infoMain,
  });
  final Widget topBar;
  final Widget infoHeader;
  final Widget infoMain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              topBar,
              infoHeader,
              infoMain,
            ],
          ),
        ),
      ),
    );
  }
}
