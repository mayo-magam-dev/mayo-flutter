part of 'favorite_store_page.dart';

class _FavoriteStoreList extends StatelessWidget {
  const _FavoriteStoreList();

  Future<(List<ReadStore>, List<ReadStore>)> featchData() async {
    final favoriteStoreData = UserDataSource().getFavoriteStores();
    final noticeStoreData = UserDataSource().getNoticeStores();
    final results = await Future.wait([favoriteStoreData, noticeStoreData]);
    return (results[0], results[1]);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: featchData(),
      builder: (context, snapshot) {
        return Expanded(
          child: ListView.builder(
            // itemCount: snapshot.data?.$1.length,
            itemCount: 3,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  _List(
                    index: index,
                    favoriteData: snapshot.data?.$1,
                    noticeData: snapshot.data?.$2,
                  ),
                  Divider(
                    color: GlobalMainGrey.grey200,
                    thickness: 2,
                  ),
                ],
              );
            },
          ),
        );
      },
    );
  }
}

class _List extends StatefulWidget {
  const _List({
    required this.index,
    required this.favoriteData,
    required this.noticeData,
  });

  final int index;
  final List<ReadStore>? favoriteData;
  final List<ReadStore>? noticeData;

  @override
  State<_List> createState() => _ListState();
}

class _ListState extends State<_List> {
  bool isFavorite = true;
  bool isNotice = false;

  // @override
  // void initState() {
  //   super.initState();
  //   isNotice = widget.favoriteData?[widget.index].id ==
  //       widget.noticeData?[widget.index].id;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 22,
        vertical: 20,
      ),
      width: double.infinity,
      height: 110,
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/icons/example_store_logo.png'),
              SizedBox(width: 10.3.w),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.favoriteData?[widget.index].storeName ?? 'null',
                    style: AppTextStyle.body1Bold.copyWith(
                      color: GlobalMainColor.globalPrimaryBlackColor,
                      letterSpacing: -0.32,
                    ),
                  ),
                  SizedBox(height: 11.h),
                  Text(
                    '마감할인 : ${widget.favoriteData?[widget.index].saleStart} ~ ${widget.favoriteData?[widget.index].saleEnd}',
                    style: AppTextStyle.body2Medium.copyWith(
                      color: GlobalMainColor.globalPrimaryBlackColor,
                      letterSpacing: -0.28,
                    ),
                  ),
                ],
              ),
              SizedBox(width: 70.w),
              GestureDetector(
                onTap: () {
                  UserDataSource()
                      .putFavoriteStore(widget.favoriteData![widget.index].id);
                  setState(() {
                    isFavorite = !isFavorite;
                  });
                },
                child: isFavorite
                    ? SvgPicture.asset(
                        'assets/icons/selected_like_function.svg')
                    : SvgPicture.asset('assets/icons/like_function.svg'),
              ),
              SizedBox(width: 15.w),
              GestureDetector(
                onTap: () {
                  UserDataSource()
                      .putNoticeStore(widget.favoriteData![widget.index].id);
                  setState(() {
                    isNotice = !isNotice;
                  });
                },
                child: isNotice
                    ? SvgPicture.asset(
                        'assets/icons/selected_alert_function.svg')
                    : SvgPicture.asset('assets/icons/alert_function.svg'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
