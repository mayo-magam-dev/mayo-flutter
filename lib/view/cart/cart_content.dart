part of 'cart_page.dart';

class _CartContent extends StatefulWidget {
  const _CartContent();

  @override
  State<_CartContent> createState() => _CartContentState();
}

class _CartContentState extends State<_CartContent> {
  int? count;

  String? storeName;

  featchCartData() async {
    final data = await CartDataSource().getCarts();
    final storeData = await StoreDataSource().getStoreDetail(data[0].storeId);

    setState(() {
      count = data[0].cartItemCount;
      storeName = storeData.storeName;
    });
  }

  @override
  void initState() {
    super.initState();
    featchCartData();
  }

  final cartData = CartDataSource().getCarts();

  int index = 0;

  @override
  Widget build(BuildContext context) {
    debugPrint('build build');
    return FutureBuilder(
      future: cartData,
      builder: (context, snapshot) {
        if (snapshot.hasData == false) {
          return SizedBox();
        } else {
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
                          image: NetworkImage(snapshot.data![index].itemImage),
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
                              snapshot.data![index].itemName,
                              // 'asfsd',
                              style: AppTextStyle.body1Bold,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(height: 8.h),
                            Text(
                              '${Formater.moneyFormat(snapshot.data![index].subtotal.toInt() / snapshot.data![index].cartItemCount)}원',
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
                                    .deleteCart(snapshot.data![0].cartId);
                              });
                            },
                            child: SvgPicture.asset("assets/icons/x.svg")),
                        SizedBox(height: 16.h),
                        Row(
                          children: [
                            GestureDetector(
                              onTap: () {
                                if (count! > 1) {
                                  setState(
                                    () {
                                      CartDataSource().putQuantity(
                                        snapshot.data![index].cartId,
                                        count! - 1,
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
                              '$count',
                              style: AppTextStyle.body1Bold,
                            ),
                            SizedBox(width: 4.w),
                            GestureDetector(
                              onTap: () {
                                setState(
                                  () {
                                    CartDataSource().putQuantity(
                                      snapshot.data![index].cartId,
                                      count! + 1,
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
              snapshot.data?.length != 1
                  ? Container(
                      decoration: BoxDecoration(
                          border: Border(
                        top: BorderSide(color: GlobalMainGrey.grey200),
                        bottom: BorderSide(color: GlobalMainGrey.grey200),
                      )),
                      padding: EdgeInsets.symmetric(
                          horizontal: 24.w, vertical: 24.h),
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
                                    NetworkImage(snapshot.data![1].itemImage),
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
                                    snapshot.data![1].itemName,
                                    style: AppTextStyle.body1Bold,
                                    overflow: TextOverflow.ellipsis,
                                  ),
                                  SizedBox(height: 8.h),
                                  Text(
                                    '${Formater.moneyFormat(snapshot.data![1].subtotal.toInt() / snapshot.data![1].cartItemCount)}원',
                                    style: AppTextStyle.body1Medium,
                                  )
                                ],
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              SvgPicture.asset("assets/icons/x.svg"),
                              SizedBox(height: 16.h),
                              Row(
                                children: [
                                  GestureDetector(
                                    onTap: () {
                                      if (count! > 1) {
                                        setState(
                                          () {
                                            CartDataSource().putQuantity(
                                              snapshot.data![1].cartId,
                                              count! - 1,
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
                                    '$count',
                                    style: AppTextStyle.body1Bold,
                                  ),
                                  SizedBox(width: 4.w),
                                  GestureDetector(
                                    onTap: () {
                                      setState(
                                        () {
                                          CartDataSource().putQuantity(
                                            snapshot.data![1].cartId,
                                            count! + 1,
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
                  : SizedBox(),
              Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.w),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "총 ${Formater.moneyFormat(snapshot.data![index].subtotal)}원",
                      style: AppTextStyle.body1Bold,
                    ),
                  )),
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
                    Container(
                      width: 335.w,
                      height: 45.h,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: GlobalMainGrey.grey100,
                        borderRadius: BorderRadius.circular(10.r),
                      ),
                      child: Text("픽업시간을 선택해 주세요.",
                          style: AppTextStyle.body1Medium
                              .copyWith(color: GlobalMainGrey.grey400)),
                    ),
                    SizedBox(height: 32.h),
                    Text(
                      "요청사항을 입력해주세요.",
                      style: AppTextStyle.body1Medium,
                    ),
                    SizedBox(height: 8.h),
                    Container(
                      height: 1.h,
                      color: GlobalMainGrey.grey200,
                    ),
                    SizedBox(height: 21.h),
                    Row(
                      children: [
                        Text("일회용품 사용여부", style: AppTextStyle.body1Medium),
                        Spacer(),
                        CupertinoSwitch(
                          value: true,
                          activeTrackColor: GlobalMainColor.globalButtonColor,
                          onChanged: (value) {},
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        }
      },
    );
  }
}

// class _ProductInCart extends StatefulWidget {
//   const _ProductInCart({
//     required this.index,
//     required this.cartData,
//   });

//   final int index;
//   final List<ReadCartResponse>? cartData;

//   @override
//   State<_ProductInCart> createState() => _ProductInCartState();
// }

// class _ProductInCartState extends State<_ProductInCart> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//           border: Border(
//         top: BorderSide(color: GlobalMainGrey.grey200),
//         bottom: BorderSide(color: GlobalMainGrey.grey200),
//       )),
//       padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Container(
//             width: 66.w,
//             height: 66.h,
//             decoration: BoxDecoration(
//                 color: GlobalMainGrey.grey200,
//                 borderRadius: BorderRadius.circular(10.r)),
//           ),
//           SizedBox(
//             width: 22.w,
//           ),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Text(
//                 // cartData?[index].itemName ?? 'itemName',
//                 '반반 샌드위치',
//                 style: AppTextStyle.body1Bold,
//               ),
//               SizedBox(height: 8.h),
//               Text(
//                 '${Formater.moneyFormat(widget.cartData?[widget.index].subtotal.toInt())}원',
//                 style: AppTextStyle.body1Medium,
//               )
//             ],
//           ),
//           SizedBox(width: 87.w),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.end,
//             children: [
//               SvgPicture.asset("assets/icons/x.svg"),
//               SizedBox(height: 16.h),
//               Row(
//                 children: [
//                   GestureDetector(
//                     onTap: () {},
//                     child: SvgPicture.asset(
//                       "assets/icons/minus.svg",
//                       width: 30.w,
//                     ),
//                   ),
//                   SizedBox(width: 4.w),
//                   Text(
//                     '${widget.cartData?[widget.index].cartItemCount}',
//                     style: AppTextStyle.body1Bold,
//                   ),
//                   SizedBox(width: 4.w),
//                   SvgPicture.asset(
//                     "assets/icons/plus.svg",
//                     width: 30.w,
//                   ),
//                 ],
//               )
//             ],
//           )
//         ],
//       ),
//     );
//   }
// }
