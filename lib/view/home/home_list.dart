part of 'home_page.dart';

class _List extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      //height: 424.h,
      padding: EdgeInsets.fromLTRB(16, 19, 16, 0),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.w),
            child: GestureDetector(
              onTap: () => context.push('/onsale'),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '일상에서 마요가 필요한 순간!',
                    style: AppTextStyle.heading2Bold.copyWith(
                      color: GlobalMainColor.globalPrimaryBlackColor,
                      letterSpacing: -0.84,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 1,
                  ),
                  SvgPicture.asset('assets/icons/right_arrow2.svg'),
                ],
              ),
            ),
          ),
          SizedBox(height: 17.h),
          BlocBuilder<HomeBloc, HomeState>(
            builder: (context, state) {
              if (state.isLoading) {
                return const CircularProgressIndicator();
              }
              if (state.randomStores.isEmpty) {
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 90.h),
                    Center(
                      child: Text(
                        '현재 마감할인 상품이 없습니다! ⏰',
                        style: AppTextStyle.body1Bold.copyWith(
                          color: Color(0xFF161616),
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                );
              }

              return Padding(
                padding: EdgeInsets.only(right: 3.w),
                child: Column(
                  children: List.generate(state.randomStores.length, (index) {
                    final store = state.randomStores[index];
                    Future<ReadStore> data = StoreDataSource().getStoreDetail(store.id);
                    return Column(
                      children: [
                        if (index != 0) SizedBox(height: 21), // 두 번째 셀부터 간격 추가
                        FutureBuilder(
                            future: data,
                            builder: (context, snapshot) {
                              if (snapshot.hasData == false) {
                                return SizedBox();
                              }
                              return StoreInfoBar(
                                storeName: store.storeName,
                                storeDescription: '${store.address}\n최대 ${store.maxSalePercent.toStringAsFixed(0)}% 할인중',
                                imageUrl: snapshot.data!.storeImage,
                                onTap: () {
                                  context.push('/store/${store.id}');
                                },
                              );
                            }),
                      ],
                    );
                  }),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
