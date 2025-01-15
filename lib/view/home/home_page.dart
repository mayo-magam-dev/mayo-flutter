import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
part 'home_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.start),
        title: Text('title'),
        actions: [],
      ),
    );
    // return _Scaffold(
    //   topBar: AppBar(
    //     backgroundColor: Colors.white,
    //     leading: SvgPicture.asset(
    //       'assets/icons/mayo_logo.svg',
    //     ),
    //     actions: [
    //       Stack(
    //         children: [
    //           Padding(
    //             padding: EdgeInsets.only(right: 31.w),
    //             child: SvgPicture.asset('assets/icons/cart.svg'),
    //           ),
    //           Positioned(
    //             left: 20.w,
    //             bottom: 20.h,
    //             child: Container(
    //               width: 15,
    //               height: 15,
    //               decoration: ShapeDecoration(
    //                 color: Colors.amber,
    //                 shape: RoundedRectangleBorder(
    //                   borderRadius: BorderRadius.circular(10),
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ],
    //       ),
    //     ],
    //   ),
    //   middle: Stack(
    //     children: [
    //       Icon(Icons.shopping_cart),
    //       Positioned(
    //         top: 10,
    //         child: Container(
    //           width: 15,
    //           height: 15,
    //           decoration: ShapeDecoration(
    //             color: Colors.amber,
    //             shape: RoundedRectangleBorder(
    //               borderRadius: BorderRadius.circular(10),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ],
    //   ),
    //   bottom: SizedBox(),
    // );
  }
}
