part of 'on_discount_page.dart';

class _Scaffold extends StatelessWidget {
  const _Scaffold({
    required this.topBar,
    required this.header,
    required this.storeList,
  });

  final PreferredSizeWidget topBar; 
  final Widget header;
  final Widget storeList;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: topBar,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 1,
                    color: GlobalMainGrey.grey200,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25.h),
            header,
            SizedBox(height: 10.h),
            storeList,
          ],
        ),
      ),
    );
  }
}
