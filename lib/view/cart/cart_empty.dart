part of 'cart_page.dart';

class _CartEmpty extends StatelessWidget {
  const _CartEmpty({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Topbar(
              title: '장바구니',
              showCarts: true,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
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
                    '상품을 담으러 가볼까요?',
                    style: AppTextStyle.body1Medium, 
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
