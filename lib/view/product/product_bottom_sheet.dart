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
  bool isLoading = false;

  Future<void> fetchCartData() async {
    final cartDataSource = await CartDataSource().getCarts();
    setState(() {
      cartData = cartDataSource;
    });
  }

  Future<void> handleAddToCart() async {
    if (isLoading) return;

    setState(() => isLoading = true);
    try {
      final loginState = context.read<LoginBloc>().state;
      if (loginState is! LoginStateChanged ||
          loginState.loginState == LocalLoginState.notLogin) {
        showDialog(
          context: context,
          builder: (context) => const _BeforeLoginOnCart(),
        );
        return;
      }

      if (cartData == null || cartData!.isEmpty) {
        await _createNewCart();
      } else {
        await _handleExistingCart();
      }
    } catch (e) {
      debugPrint('장바구니 추가 실패: $e');
    } finally {
      setState(() => isLoading = false);
    }
  }

  Future<void> _createNewCart() async {
    final itemInfo = CreateCartRequest(
      itemId: widget.itemData!.itemId,
      itemCount: ItemQuantityCounter.itemCount,
      storeId: widget.storeId,
    );
    await CartDataSource().createCart(request: itemInfo);
    _showSuccessDialog();
  }

  Future<void> _handleExistingCart() async {
    try {
      final existingItem = cartData!.firstWhere(
        (item) => item.itemName == widget.itemData?.itemName,
      );
      await CartDataSource().putQuantity(
        existingItem.cartId,
        ItemQuantityCounter.itemCount + existingItem.cartItemCount,
      );
      _showSuccessDialog();
    } catch (e) {
      if (cartData!.first.storeId == widget.storeId) {
        await _createNewCart();
      } else {
        debugPrint('다른 가게의 상품이 장바구니에 있습니다.');
        await CartDataSource().deleteCart(cartData!.first.cartId);
        await _createNewCart();
      }
    }
  }

  void _showSuccessDialog() {
    showDialog(
      context: context,
      builder: (context) => const _OnCart(),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchCartData();
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
            offset: const Offset(0, 3),
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
                _buildBrowseStoreButton(),
                _buildAddToCartButton(),
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBrowseStoreButton() {
    return Container(
      width: 159.w,
      height: 50.h,
      decoration: BoxDecoration(
        color: GlobalMainGrey.grey200,
        borderRadius: BorderRadius.circular(12),
      ),
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () => context.pop(),
        child: Text(
          "가게 둘러보기",
          style: AppTextStyle.body1Bold.copyWith(color: GlobalMainGrey.grey400),
        ),
      ),
    );
  }

  Widget _buildAddToCartButton() {
    return GestureDetector(
      onTap: handleAddToCart,
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
          style: AppTextStyle.body1Bold.copyWith(color: Colors.white),
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
