part of 'product_page.dart';

class _BeforeLoginOnCart extends StatelessWidget {
  const _BeforeLoginOnCart();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        width: 314.w,
        height: 200.h,
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20.r)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 21.5.h),
          child: Column(
            children: [
              Text(
                "로그인 후 사용해주세요",
                style: AppTextStyle.heading3Bold,
              ),
              SizedBox(height: 18.h),
              Text(
                "장바구니를 사용하려면 로그인이 필요해요.",
                style: AppTextStyle.body2Medium,
              ),
              SizedBox(height: 24.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  GestureDetector(
                    onTap: () => context.pop(),
                    child: Container(
                      width: 129.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        color: GlobalMainGrey.grey200,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text("닫기",
                          style: AppTextStyle.body1Bold
                              .copyWith(color: GlobalMainGrey.grey400)),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      context.go('/login');
                    },
                    child: Container(
                      width: 129.w,
                      height: 56.h,
                      decoration: BoxDecoration(
                        color: GlobalMainColor.globalButtonColor,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      alignment: Alignment.center,
                      child: Text("로그인",
                          style: AppTextStyle.body1Bold
                              .copyWith(color: Colors.white)),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class _OnCart extends StatelessWidget {
  const _OnCart();

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.r),
      ),
      backgroundColor: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.w, vertical: 20.h),
        child: SingleChildScrollView(
          // ✅ 오버플로우 방지
          child: Column(
            mainAxisSize: MainAxisSize.min, 
            children: [
              SizedBox(height: 10.h),
              Text(
                "장바구니에 담았어요.",
                style: AppTextStyle.heading3Bold,
              ),
              SizedBox(height: 8.h),
              Image.asset(
                "assets/icons/cart_image.png",
                height: 135.h,
                width: 135.w,
                fit: BoxFit.contain,
              ),
              SizedBox(height: 29.h),
              Text(
                "같은 가게의 다른 메뉴도 보러 갈까요?",
                style: AppTextStyle.body2Medium,
              ),
              SizedBox(height: 18.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // 가게 둘러보기
                  Expanded(
                    child: GestureDetector(
                      onTap: () => context.pop(),
                      child: Container(
                        height: 56.h,
                        decoration: BoxDecoration(
                          color: GlobalMainGrey.grey200,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "가게 둘러보기",
                          style: AppTextStyle.body1Bold.copyWith(
                            color: GlobalMainGrey.grey400,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 12.w),
                  // 장바구니 이동
                  Expanded(
                    child: GestureDetector(
                      onTap: () => context.push('/cart'),
                      child: Container(
                        height: 56.h,
                        decoration: BoxDecoration(
                          color: GlobalMainColor.globalButtonColor,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "장바구니",
                          style: AppTextStyle.body1Bold.copyWith(
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
