import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mayo_flutter/desginSystem/fontsize.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

class CartEmpty extends StatelessWidget {
  const CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
                child: Column(
      children: [
        Topbar(
          title: '장바구니',
          showCarts: false,
        ),
        SizedBox(
          height: 180,
        ),
        Center(
          child: Column(
            children: [
              Image.asset(
                "assets/images/empty_cart.png",
                width: 200,
                height: 200,
              ),
              SizedBox(height: 25.h),
              Text(
                '장바구니가 비어있어요',
                style: AppTextStyle.heading2Bold,
              ),
              SizedBox(
                height: 10.h,
              ),
              Text(
                '원하는 상품을 담아보세요',
                style: AppTextStyle.body1Medium,
              ),
            ],
          ),
        ),
      ],
    ))));
  }
}
