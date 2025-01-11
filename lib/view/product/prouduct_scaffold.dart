part of 'prouduct_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.infoImage,
    required this.infoText,
    required this.infoButton,
  });
  final Widget topBar;
  final Widget infoImage;
  final Widget infoText;
  final Widget infoButton;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Column(
        children: [
          topBar,
          infoImage,
          infoText,
          infoButton,
        ],
      ),
    )));
  }
}
