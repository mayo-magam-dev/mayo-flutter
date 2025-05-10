part of 'home_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.banner,
    required this.category,
    required this.storeList,
  });

  final Widget topBar;
  final Widget banner;
  final Widget category;
  final Widget storeList;

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
    );
  }
}
