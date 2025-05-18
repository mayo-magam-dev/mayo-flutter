part of 'store_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.infoHeader,
    required this.infoMain,
  });
  final PreferredSizeWidget topBar;
  final Widget infoHeader;
  final Widget infoMain;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              infoHeader,
              infoMain,
            ],
          ),
        ),
      ),
    );
  }
}
