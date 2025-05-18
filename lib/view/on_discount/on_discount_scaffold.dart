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
      appBar: topBar, // ✅ AppBar 영역으로 이동
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 25.h),
                header,
                SizedBox(height: 10.h),
                storeList,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
