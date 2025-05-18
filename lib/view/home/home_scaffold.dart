part of 'home_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.banner,
    required this.category,
    required this.storeList,
  });

  final PreferredSizeWidget topBar; // ✅ 수정됨
  final Widget banner;
  final Widget category;
  final Widget storeList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar, // ✅ 이제 문제 없음
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // 필요 시 다른 위젯 추가 가능
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
