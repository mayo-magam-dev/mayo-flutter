part of 'product_page.dart';

class _OnCart extends StatelessWidget {
  const _OnCart();

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
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) {
                          return _OnCart();
                        }),
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
                    onTap: () => showDialog(
                        context: context,
                        builder: (context) {
                          return _OnCart();
                        }),
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
