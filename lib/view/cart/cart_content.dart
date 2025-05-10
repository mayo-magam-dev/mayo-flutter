part of 'cart_page.dart';

class _CartContent extends StatefulWidget {
  const _CartContent(this.cartData);

  static bool disposable = true;
  static DateTime? pickupTime;
  static String reservationRequest = '';

  final List<ReadCartResponse> cartData;

  @override
  State<_CartContent> createState() => _CartContentState();
}

class _CartContentState extends State<_CartContent> {
  List<ReadCartResponse>? futureCart;

  final TextEditingController reverationRequestEditingController =
      TextEditingController();

  String? storeName;
  DateTime? pickupTime = DateTime.now();
  String? period;

  List<int> itemCounts = [];
  List<int> itemSubtotals = [];

  Future<void> fetchCartData() async {
    final storeData =
        await StoreDataSource().getStoreDetail(widget.cartData[0].storeId);
    final cartDataSource = await CartDataSource().getCarts();

    setState(() {
      futureCart = cartDataSource;
      storeName = storeData.storeName;

      itemCounts = List.generate(
        widget.cartData.length,
        (i) => widget.cartData[i].cartItemCount,
      );

      itemSubtotals = List.generate(
        widget.cartData.length,
        (i) => widget.cartData[i].subtotal.toInt(),
      );
    });
  }

  @override
  void initState() {
    super.initState();
    fetchCartData();
  }

  Widget buildCartItem(int index) {
    if (index >= widget.cartData.length) return const SizedBox.shrink();

    final item = widget.cartData[index];
    final countSafe = itemCounts.length > index ? itemCounts[index] : 0;
    final subtotalSafe = itemSubtotals.length > index ? itemSubtotals[index] : 0;

    return Container(
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(color: GlobalMainGrey.grey200),
          bottom: BorderSide(color: GlobalMainGrey.grey200),
        ),
      ),
      padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 66.w,
            height: 66.h,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.r),
              image: DecorationImage(
                image: NetworkImage(item.itemImage ?? ''),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 27.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 27.w),
                  Text(
                    item.itemName,
                    style: AppTextStyle.body1Bold,
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(height: 8.h),
                  if (countSafe > 0)
                    Text(
                      '${Formater.moneyFormat(subtotalSafe / countSafe)}원',
                      style: AppTextStyle.body1Medium,
                    ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              GestureDetector(
                onTap: () async {
                  await CartDataSource().deleteCart(item.cartId);
                  context.pushReplacement('/cart');
                },
                child: SvgPicture.asset("assets/icons/x.svg"),
              ),
              SizedBox(height: 16.h),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      if (countSafe > 1) {
                        setState(() {
                          itemSubtotals[index] -=
                              (subtotalSafe / countSafe).toInt();
                          itemCounts[index]--;
                          CartDataSource()
                              .putQuantity(item.cartId, itemCounts[index]);
                        });
                      }
                    },
                    child: SvgPicture.asset(
                      "assets/icons/minus.svg",
                      width: 30.w,
                    ),
                  ),
                  SizedBox(width: 4.w),
                  Text('$countSafe', style: AppTextStyle.body1Bold),
                  SizedBox(width: 4.w),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        itemSubtotals[index] +=
                            (subtotalSafe / countSafe).toInt();
                        itemCounts[index]++;
                        CartDataSource()
                            .putQuantity(item.cartId, itemCounts[index]);
                      });
                    },
                    child: SvgPicture.asset(
                      "assets/icons/plus.svg",
                      width: 30.w,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.w),
          child: Row(
            children: [
              SvgPicture.asset("assets/icons/pin.svg", height: 30.h, width: 30.w),
              SizedBox(width: 6.w),
              Text('$storeName', style: AppTextStyle.heading3Bold),
            ],
          ),
        ),
        Container(height: 1.h, color: GlobalMainGrey.grey200),
        ...List.generate(widget.cartData.length, (index) => buildCartItem(index)),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.w),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "총 ${Formater.moneyFormat(itemSubtotals.fold(0, (a, b) => a + b))}원",
              style: AppTextStyle.body1Bold,
            ),
          ),
        ),
        Container(height: 12.h, color: GlobalMainGrey.grey200),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("픽업 시간 입력", style: AppTextStyle.body1Bold),
              SizedBox(height: 14.w),
              GestureDetector(
                onTap: () {
                  showCupertinoDialog(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            color: Colors.white,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                TextButton(
                                  onPressed: () => context.pop(),
                                  child: Text('취소', style: AppTextStyle.body1Medium),
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.pop();
                                    setState(() {
                                      _CartContent.pickupTime = pickupTime;
                                      period = _CartContent.pickupTime!.hour < 12 ? '오전' : '오후';
                                    });
                                  },
                                  child: Text('완료', style: AppTextStyle.body1Medium),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            color: Colors.white,
                            height: 224.h,
                            child: CupertinoDatePicker(
                              dateOrder: DatePickerDateOrder.dmy,
                              mode: CupertinoDatePickerMode.time,
                              onDateTimeChanged: (value) {
                                pickupTime = value;
                              },
                            ),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Container(
                  width: 335.w,
                  height: 45.h,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: GlobalMainGrey.grey100,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Text(
                    period == null
                        ? "픽업시간을 선택해 주세요."
                        : '$period ${_CartContent.pickupTime.toString().substring(11, 13)}:${_CartContent.pickupTime.toString().substring(14, 16)}',
                    style: AppTextStyle.body1Medium.copyWith(
                      color: GlobalMainGrey.grey400,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 32.h),
              TextField(
                controller: reverationRequestEditingController,
                onChanged: (value) => _CartContent.reservationRequest = value,
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                  hintText: '요청사항을 입력해주세요.',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: GlobalMainGrey.grey200),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: GlobalMainGrey.grey300),
                  ),
                ),
              ),
              SizedBox(height: 21.h),
              Row(
                children: [
                  Text("일회용품 사용여부", style: AppTextStyle.body1Medium),
                  const Spacer(),
                  CupertinoSwitch(
                    value: _CartContent.disposable,
                    activeTrackColor: GlobalMainColor.globalButtonColor,
                    onChanged: (value) => setState(() => _CartContent.disposable = value),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
