part of 'home_page.dart';

class _HomeTopBar extends StatelessWidget {
  //ignore: unused_element
  const _HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {}, //로그인 화면으로 이동
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset('assets/icons/mayo_logo_80x27.png'),
            Stack(
              alignment: AlignmentDirectional.topEnd,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 5, 0),
                  child: SvgPicture.asset('assets/icons/cart.svg'),
                ),
                Container(
                  width: 15,
                  height: 15,
                  decoration: ShapeDecoration(
                    color: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  child: Center(
                    child: Text('0',
                        style: AppTextStyle.captionMedium
                            .copyWith(color: Colors.white)),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
