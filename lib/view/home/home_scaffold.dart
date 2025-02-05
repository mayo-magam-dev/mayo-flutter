part of 'home_page.dart';

// ignore: unused_element
class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.banner,
    required this.category,
    required this.storeList,
    required this.bottomBar,
  });

  final Widget topBar;
  final Widget banner;
  final Widget category;
  final Widget storeList;
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
                  banner,
                  category,
                ],
              ),
              storeList,
            ],
          ),
        ),
      ),
      bottomNavigationBar: bottomBar,
    );
  }
}
