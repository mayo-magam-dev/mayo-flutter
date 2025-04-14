part of 'cart_page.dart';

class _CartContent extends StatefulWidget {
  const _CartContent(
    this.cartData,
  );
  static bool disposable = true;
  static DateTime? pickupTime;
  static String reservationRequest = '';

  final List<ReadCartResponse> cartData;

  @override
  State<_CartContent> createState() => _CartContentState();
}

class _CartContentState extends State<_CartContent> {
  int firstCartItemCount = 0;
  int secondCartItemCount = 0;
  int firstItemSubtotal = 0;
  int secondItemSubtotal = 0;

  final reverationRequestEditingController = TextEditingController();

  String? storeName;

  DateTime? pickupTime = DateTime.now(); 

  String? period;

  featchCartData() async {
    final storeData =
        await StoreDataSource().getStoreDetail(widget.cartData[0].storeId);

    setState(() {
      firstCartItemCount = widget.cartData[0].cartItemCount;
      firstItemSubtotal += widget.cartData[0].subtotal.toInt();
      storeName = storeData.storeName;
      if (widget.cartData.length > 1) {
        secondCartItemCount = widget.cartData[1].cartItemCount;
        secondItemSubtotal += widget.cartData[1].subtotal.toInt();
      }
    });
  }

  @override
  void initState() {
    super.initState();
    featchCartData();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.w),
          child: Row(
            children: [
              SvgPicture.asset(
                "assets/icons/pin.svg",
                height: 30.h,
                width: 30.w,
              ),
              SizedBox(width: 6.w),
              Text(
                '$storeName',
                style: AppTextStyle.heading3Bold,
              ),
            ],
          ),
        ),
        Container(
          height: 1.h,
          color: GlobalMainGrey.grey200,
        ),
        Container(
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
                    image: NetworkImage(widget.cartData[0].itemImage ?? ''),
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
                        widget.cartData[0].itemName,
                        style: AppTextStyle.body1Bold,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(height: 8.h),
                      Text(
                        '${Formater.moneyFormat(widget.cartData[0].subtotal.toInt() / widget.cartData[0].cartItemCount)}원',
                        style: AppTextStyle.body1Medium,
                      )
                    ],
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          CartDataSource()
                              .deleteCart(widget.cartData[0].cartId);
                        });
                      },
                      child: SvgPicture.asset("assets/icons/x.svg")),
                  SizedBox(height: 16.h),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          if (firstCartItemCount > 1) {
                            setState(
                              () {
                                firstItemSubtotal -=
                                    (firstItemSubtotal / firstCartItemCount)
                                        .toInt();
                                --firstCartItemCount;
                                CartDataSource().putQuantity(
                                  widget.cartData[0].cartId,
                                  firstCartItemCount,
                                );
                              },
                            );
                          }
                        },
                        child: SvgPicture.asset(
                          "assets/icons/minus.svg",
                          width: 30.w,
                        ),
                      ),
                      SizedBox(width: 4.w),
                      Text(
                        '$firstCartItemCount',
                        style: AppTextStyle.body1Bold,
                      ),
                      SizedBox(width: 4.w),
                      GestureDetector(
                        onTap: () {
                          setState(
                            () {
                              firstItemSubtotal +=
                                  (firstItemSubtotal / firstCartItemCount)
                                      .toInt();

                              ++firstCartItemCount;
                              CartDataSource().putQuantity(
                                widget.cartData[0].cartId,
                                firstCartItemCount,
                              );
                            },
                          );
                        },
                        child: SvgPicture.asset(
                          "assets/icons/plus.svg",
                          width: 30.w,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        widget.cartData.length > 1
            ? Container(
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(color: GlobalMainGrey.grey200),
                  bottom: BorderSide(color: GlobalMainGrey.grey200),
                )),
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
                          image:
                              NetworkImage(widget.cartData[1].itemImage ?? ''),
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
                              widget.cartData[1].itemName,
                              style: AppTextStyle.body1Bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              '${Formater.moneyFormat(widget.cartData[1].subtotal / widget.cartData[1].cartItemCount)}원',
                              style: AppTextStyle.body1Medium,
                            )
                          ],
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        GestureDetector(
                            onTap: () {
                              setState(() {
                                CartDataSource()
                                    .deleteCart(widget.cartData[1].cartId);
                              });
                            },
                            child: SvgPicture.asset("assets/icons/x.svg")),
                        SizedBox(height: 16.h),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (secondCartItemCount > 1) {
                                  setState(
                                    () {
                                      secondItemSubtotal -=
                                          (secondItemSubtotal /
                                                  secondCartItemCount)
                                              .toInt();
                                      --secondCartItemCount;
                                      CartDataSource().putQuantity(
                                        widget.cartData[1].cartId,
                                        secondCartItemCount,
                                      );
                                    },
                                  );
                                }
                              },
                              child: SvgPicture.asset(
                                "assets/icons/minus.svg",
                                width: 30.w,
                              ),
                            ),
                            SizedBox(width: 4.w),
                            Text(
                              '$secondCartItemCount',
                              style: AppTextStyle.body1Bold,
                            ),
                            SizedBox(width: 4.w),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    secondItemSubtotal += (secondItemSubtotal /
                                            secondCartItemCount)
                                        .toInt();
                                    ++secondCartItemCount;
                                    CartDataSource().putQuantity(
                                      widget.cartData[1].cartId,
                                      secondCartItemCount,
                                    );
                                  },
                                );
                              },
                              child: SvgPicture.asset(
                                "assets/icons/plus.svg",
                                width: 30.w,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              )
            : SizedBox.shrink(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.w),
          child: Align(
            alignment: Alignment.centerRight,
            child: Text(
              "총 ${Formater.moneyFormat(firstItemSubtotal + secondItemSubtotal)}원",
              style: AppTextStyle.body1Bold,
            ),
          ),
        ),
        Container(
          height: 12.h,
          color: GlobalMainGrey.grey200,
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "픽업 시간 입력",
                style: AppTextStyle.body1Bold,
              ),
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
                                  onPressed: () {
                                    context.pop();
                                  },
                                  child: Text(
                                    '취소',
                                    style: AppTextStyle.body1Medium.copyWith(
                                      color: GlobalMainColor
                                          .globalPrimaryBlackColor,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    context.pop();
                                    setState(() {
                                      _CartContent.pickupTime = pickupTime;
                                      period =
                                          _CartContent.pickupTime!.hour < 12
                                              ? '오전'
                                              : '오후';
                                    });
                                  },
                                  child: Text(
                                    '완료',
                                    style: AppTextStyle.body1Medium.copyWith(
                                      color: GlobalMainColor
                                          .globalPrimaryBlackColor,
                                    ),
                                  ),
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
                          : '$period ${_CartContent.pickupTime.toString().substring(11, 13)} : ${_CartContent.pickupTime.toString().substring(14, 16)}',
                      style: AppTextStyle.body1Medium
                          .copyWith(color: GlobalMainGrey.grey400)),
                ),
              ),
              SizedBox(height: 32.h),
              TextField(
                controller: reverationRequestEditingController,
                onChanged: (value) {
                  _CartContent.reservationRequest = value;
                },
                onTapOutside: (event) => FocusScope.of(context).unfocus(),
                decoration: InputDecoration(
                  hintText: '요청사항을 입력해주세요.',
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: GlobalMainGrey.grey200,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: GlobalMainGrey.grey300,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 21.h),
              Row(
                children: [
                  Text("일회용품 사용여부", style: AppTextStyle.body1Medium),
                  Spacer(),
                  CupertinoSwitch(
                    value: _CartContent.disposable,
                    activeTrackColor: GlobalMainColor.globalButtonColor,
                    onChanged: (value) {
                      setState(() {
                        _CartContent.disposable = value;
                      });
                    },
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
