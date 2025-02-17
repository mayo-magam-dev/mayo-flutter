part of 'home_page.dart';

class _Banner extends StatefulWidget {
  // ignore: unused_element
  const _Banner({super.key});

  @override
  State<_Banner> createState() => _BannerState();
}

class _BannerState extends State<_Banner> {
  final controller = PageController(initialPage: 0);

  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox(
            width: double.infinity,
            height: 213.h,
            // color: GlobalMainGrey.grey200,
            child: PageView(
              onPageChanged: (value) {
                setState(() {
                  pageIndex = value;
                });
              },
              controller: controller,
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  color: Colors.red,
                ),
                Container(
                  color: Colors.orange,
                ),
                Container(
                  color: Colors.green,
                ),
              ],
            )),
        Padding(
          padding: EdgeInsets.only(top: 9.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.only(right: 15),
                width: 5,
                height: 5,
                decoration: ShapeDecoration(
                  color: pageIndex == 0
                      ? GlobalMainGrey.grey300
                      : GlobalMainGrey.grey100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(right: 15),
                width: 5,
                height: 5,
                decoration: ShapeDecoration(
                  color: pageIndex == 1
                      ? GlobalMainGrey.grey300
                      : GlobalMainGrey.grey100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
              Container(
                width: 5,
                height: 5,
                decoration: ShapeDecoration(
                  color: pageIndex == 2
                      ? GlobalMainGrey.grey300
                      : GlobalMainGrey.grey100,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
