part of 'product_page.dart';

class _BottomSheet extends StatelessWidget {
  const _BottomSheet({required this.itemData});

  final ReadItem? itemData;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 221.h,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            spreadRadius: 1,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 31.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("${itemData!.salePrice}", style: AppTextStyle.heading3Bold),
            SizedBox(height: 18.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "수량 선택",
                  style: AppTextStyle.body1Bold,
                ),
                Row(
                  children: [
                    Text("1개", style: AppTextStyle.body1Bold),
                    SizedBox(width: 15.w),
                    SvgPicture.asset("assets/icons/minus.svg"),
                    SizedBox(width: 20.w),
                    SvgPicture.asset("assets/icons/plus.svg"),
                  ],
                ),
              ],
            ),
            Container(
              height: 1.h,
              color: GlobalMainGrey.grey200,
            ),
            SizedBox(height: 29.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 159.w,
                  height: 50.h,
                  decoration: BoxDecoration(
                    color: GlobalMainGrey.grey200,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Text("가게 둘러보기",
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
                    width: 159.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      color: GlobalMainColor.globalButtonColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    alignment: Alignment.center,
                    child: Text("장바구니 담기",
                        style: AppTextStyle.body1Bold
                            .copyWith(color: Colors.white)),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
