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
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              topBar,
              Stack(
                children: [
                  header,
                  middle,
                ],
              ),
              bottom,
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomBar,
    );
  }
}
