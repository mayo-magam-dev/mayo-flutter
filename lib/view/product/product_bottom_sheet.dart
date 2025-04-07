part of 'product_page.dart';

class _BottomSheet extends StatefulWidget {
  const _BottomSheet({
    required this.itemData,
    required this.storeId,
  });

  final ReadItem? itemData;
  final String storeId;

  @override
  State<_BottomSheet> createState() => _BottomSheetState();
}

class _BottomSheetState extends State<_BottomSheet> {
  Future<List<ReadCartResponse>>? cartData;

  Future<List<ReadCartResponse>>? featchData() async {
    return await cartData!;
  }

  @override
  void initState() {
    super.initState();
    cartData = CartDataSource().getCarts();
  }

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
            ItemQuantityCounter(salePrice: widget.itemData!.salePrice!),
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
                    onTap: () => context.pop(),
                    child: Text("가게 둘러보기",
                        style: AppTextStyle.body1Bold
                            .copyWith(color: GlobalMainGrey.grey400)),
                  ),
                ),
<<<<<<< HEAD
                GestureDetector(
                  onTap: () {
                    final itemInfo = CreateCartRequest(
                      itemId: itemData!.itemId,
                      itemCount: ItemQuantityCounter.itemCount,
                      storeId: storeId,
                    );

                    CartDataSource().createCart(request: itemInfo);

                    showDialog(
                        context: context,
                        builder: (context) {
                          return _OnCart();
                        });
=======
                FutureBuilder(
                  future: featchData(),
                  builder: (context, snapshot) {
                    return GestureDetector(
                      onTap: () {
                        // try {
                        //   ReadCartResponse targetStore = snapshot.data!
                        //       .firstWhere((item) =>
                        //           item.itemName == widget.itemData?.itemName);
                        //   CartDataSource().putQuantity(targetStore.cartId,
                        //       ItemQuantityCounter.itemCount);
                        // } catch (error) {
                        final itemInfo = CreateCartRequest(
                          itemId: widget.itemData!.itemId,
                          itemCount: ItemQuantityCounter.itemCount,
                          storeId: widget.storeId,
                        );
                        CartDataSource().createCart(request: itemInfo);
                        // }
                        showDialog(
                          context: context,
                          builder: (context) {
                            return _OnCart();
                          },
                        );
                      },
                      child: Container(
                        width: 159.w,
                        height: 50.h,
                        decoration: BoxDecoration(
                          color: GlobalMainColor.globalButtonColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        alignment: Alignment.center,
                        child: Text(
                          "장바구니 담기",
                          style: AppTextStyle.body1Bold
                              .copyWith(color: Colors.white),
                        ),
                      ),
                    );
>>>>>>> origin/backup
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ItemQuantityCounter extends StatefulWidget {
  const ItemQuantityCounter({
    super.key,
    required this.salePrice,
  });
  final double salePrice;

  static int itemCount = 1;

  @override
  State<ItemQuantityCounter> createState() => _ItemQuantityCounterState();
}

class _ItemQuantityCounterState extends State<ItemQuantityCounter> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            "${Formater.moneyFormat((widget.salePrice) * ItemQuantityCounter.itemCount.toInt())}원",
            style: AppTextStyle.heading3Bold),
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
                Text("${ItemQuantityCounter.itemCount}",
                    style: AppTextStyle.body1Bold),
                SizedBox(width: 15.w),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (ItemQuantityCounter.itemCount > 1) {
                        --ItemQuantityCounter.itemCount;
                      }
                    });
                  },
                  child: SvgPicture.asset("assets/icons/minus.svg"),
                ),
                SizedBox(width: 20.w),
                GestureDetector(
                    onTap: () {
                      setState(() {
                        ++ItemQuantityCounter.itemCount;
                      });
                    },
                    child: SvgPicture.asset("assets/icons/plus.svg")),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
