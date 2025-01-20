part of 'home_page.dart';

class _HomeBottom extends StatelessWidget {
  //ignore: unused_element
  const _HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      padding: EdgeInsets.fromLTRB(24, 29, 24, 21),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.w),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '일상에서 마요가 필요한 순간!',
                  style: TextStyle(
                    fontSize: 21.sp,
                    // fontFamily: 'Pretendard',
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.84,
                  ),
                ),
                Icon(Icons.keyboard_arrow_right_sharp)
              ],
            ),
          ),
          StoreInfoBar(),
          StoreInfoBar(),
          StoreInfoBar(),
        ],
      ),
    );
  }
}