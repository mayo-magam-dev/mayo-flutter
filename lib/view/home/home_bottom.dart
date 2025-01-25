part of 'home_page.dart';

class _HomeBottom extends StatelessWidget {
  //ignore: unused_element
  const _HomeBottom({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 424.h,
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
                  style:
                      AppTextStyle.heading2Bold.copyWith(letterSpacing: -0.84),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.keyboard_arrow_right_sharp))
              ],
            ),
          ),
          SizedBox(height: 17.h),
          StoreInfoBar(),
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: GlobalMainGrey.grey200,
                ),
              ),
            ),
          ),
          StoreInfoBar(),
          Container(
            width: double.infinity,
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: GlobalMainGrey.grey200,
                ),
              ),
            ),
          ),
          StoreInfoBar(),
        ],
      ),
    );
  }
}
