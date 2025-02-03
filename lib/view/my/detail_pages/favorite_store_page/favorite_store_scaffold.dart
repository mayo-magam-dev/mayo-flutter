part of 'favorite_store_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.header,
    required this.favoriteStoreList,
  });
  final Widget topBar;
  final Widget header;
  final Widget favoriteStoreList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            topBar,
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 0.3,
                    color: GlobalMainGrey.grey200,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.h),
            header,
            SizedBox(height: 21.h),
            favoriteStoreList,
          ],
        ),
      ),
    );
  }
}
