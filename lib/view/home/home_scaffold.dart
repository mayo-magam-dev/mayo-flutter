part of 'home_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.banner,
    required this.category,
    required this.storeList,
  });

  final PreferredSizeWidget topBar;
  final Widget banner;
  final Widget category;
  final Widget storeList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
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
