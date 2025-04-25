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
  List<ReadCartResponse>? cartData;

  featchCartData() async {
    final cartDataSource = await CartDataSource().getCarts();
    setState(() {
      cartData = cartDataSource;
    });
  }

  @override
  void initState() {
    super.initState();
    featchCartData();
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
            ItemQuantityCounter(
              salePrice: widget.itemData!.salePrice!,
              itemQuantity: widget.itemData!.itemQuantity,
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
                    onTap: () => context.pop(),
                    child: Text("가게 둘러보기",
                        style: AppTextStyle.body1Bold
                            .copyWith(color: GlobalMainGrey.grey400)),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    if (cartData!.isEmpty) {
                      //장바구니가 비어있으면
                      final itemInfo = CreateCartRequest(
                        itemId: widget.itemData!.itemId,
                        itemCount: ItemQuantityCounter.itemCount,
                        storeId: widget.storeId,
                      );
                      CartDataSource().createCart(request: itemInfo);
                      showDialog(
                        context: context,
                        builder: (context) {
                          return _OnCart();
                        },
                      );
                    } else if (cartData!.isNotEmpty) {
                      //장바구니에 아이템이 있다면
                        try {
                          ReadCartResponse targetStore = cartData!.firstWhere(
                              (item) =>
                                  item.itemName == widget.itemData?.itemName);
                          //장바구니 아이템과 저장할 아이템이 같다면
                          CartDataSource().putQuantity(
                            targetStore.cartId,
                            ItemQuantityCounter.itemCount +
                                targetStore.cartItemCount,
                          );
                          showDialog(
                            context: context,
                            builder: (context) {
                              return _OnCart();
                            },
                          );
                        } catch (e) {
                          //장바구니 아이템과 저장할 아이템이 같지 않다면
                          if (cartData!.first.storeId == widget.storeId) {
                            //장바구니의 아이템과 저장할 아이템의 가게가 같다면
                            final itemInfo = CreateCartRequest(
                              itemId: widget.itemData!.itemId,
                              itemCount: ItemQuantityCounter.itemCount,
                              storeId: widget.storeId,
                            );
                            CartDataSource().createCart(request: itemInfo);
                            showDialog(
                              context: context,
                              builder: (context) {
                                return _OnCart();
                              },
                            );
                          } else {
                            //장바구니의 아이템과 저장할 아이템의 가게가 다르다면
                          }
                        
                      }
                    }
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
                      style:
                          AppTextStyle.body1Bold.copyWith(color: Colors.white),
                    ),
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

class ItemQuantityCounter extends StatefulWidget {
  const ItemQuantityCounter({
    super.key,
    required this.salePrice,
    required this.itemQuantity,
  });
  
  final double salePrice;
  final int itemQuantity;

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
                GestureDetector(
                  onTap: () {
                    if (ItemQuantityCounter.itemCount > 1) {
                      setState(() {
                        --ItemQuantityCounter.itemCount;
                      });
                    }
                  },
                  child: SvgPicture.asset("assets/icons/minus.svg"),
                ),
                SizedBox(width: 15.w),
                Text("${ItemQuantityCounter.itemCount}개",
                    style: AppTextStyle.body1Bold),
                SizedBox(width: 15.w),
                GestureDetector(
                    onTap: () {
                      if (widget.itemQuantity > ItemQuantityCounter.itemCount) {
                        setState(() {
                          ++ItemQuantityCounter.itemCount;
                        });
                      }
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
