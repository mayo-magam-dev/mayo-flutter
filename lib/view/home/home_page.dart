import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mayo_flutter/desginSystem/color.dart';
import 'package:mayo_flutter/view/components/category_buttons.dart';
import 'package:mayo_flutter/view/components/store_info_bar.dart';

part 'home_scaffold.dart';
part 'home_header.dart';
part 'home_middle.dart';
part 'home_bottom.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  final int cartItemCount = 0; //장바구니에 담은 아이템 개수

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset('assets/icons/mayo_logo.svg'),
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
                    child: Text(
                      '$cartItemCount',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10.sp,
                        fontFamily: 'Pretendard',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      header: _HomeHeader(),
      middle: _HomeMiddle(),
      bottom: _HomeBottom(),
      bottomBar: SizedBox(),
    );
  }
}
