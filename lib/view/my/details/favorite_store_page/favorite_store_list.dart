part of 'favorite_store_page.dart';

class _FavoriteStoreList extends StatefulWidget {

  @override
  State<_FavoriteStoreList> createState() => _FavoriteStoreListState();
}

class _FavoriteStoreListState extends State<_FavoriteStoreList> {
  Future<void> featchData() async {
    final favoriteData = await UserDataSource().getFavoriteStores();
    final noticeData = await UserDataSource().getNoticeStores();
    if (mounted) {
      setState(() {
        favoriteStores = favoriteData;
        noticeStores = noticeData;
        for (ReadStore data in favoriteStores!) {
          mergeStore.add(data);
        }
        for (ReadStore data in noticeStores!) {
          mergeStore.add(data);
        }
        mergeStore = mergeStore.toSet().toList();
      });
    }
  }

  @override
  void initState() {
    super.initState();
    featchData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  List<ReadStore>? favoriteStores;
  List<ReadStore>? noticeStores;
  List<ReadStore> mergeStore = [];

  @override
  Widget build(BuildContext context) {
    if (mergeStore.isNotEmpty) {
      return Expanded(
        child: ListView.builder(
          itemCount: mergeStore.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                _List(
                  index: index,
                  storeData: mergeStore,
                  favoriteData: favoriteStores!,
                  noticeData: noticeStores!,
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
    } else {
      return SizedBox();
    }
  }
}

class _List extends StatefulWidget {
  const _List({
    required this.index,
    required this.storeData,
    required this.favoriteData,
    required this.noticeData,
  });

  final int index;
  final List<ReadStore> storeData;
  final List<ReadStore> favoriteData;
  final List<ReadStore> noticeData;

  @override
  State<_List> createState() => _ListState();
}

class _ListState extends State<_List> {
  bool favorite = false;
  bool notice = false;

  favoriteAndNoticeInit() {
    if (mounted) {
      setState(() {
        favorite = widget.favoriteData.any((favoriteStores) =>
            favoriteStores.id == widget.storeData[widget.index].id);
        notice = widget.noticeData.any((noticeStores) =>
            noticeStores.id == widget.storeData[widget.index].id);
      });
    }
  }

  @override
  void initState() {
    super.initState();
    favoriteAndNoticeInit();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 24,
        right: 26,
      ),
      width: double.infinity,
      height: 110,
      alignment: Alignment.center,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 70,
                height: 70,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                    side: BorderSide(width: 1, color: GlobalMainGrey.grey200),
                  ),
                  image: DecorationImage(
                    image:
                        NetworkImage(widget.storeData[widget.index].storeImage),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    SizedBox(width: 10.7),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.storeData[widget.index].storeName,
                          style: AppTextStyle.body1Bold.copyWith(
                            color: GlobalMainColor.globalPrimaryBlackColor,
                            letterSpacing: -0.32,
                          ),
                        ),
                        SizedBox(height: 11.h),
                        Text(
                          '마감할인 : ${widget.storeData[widget.index].saleStart} ~ ${widget.storeData[0].saleEnd}',
                          style: AppTextStyle.body2Medium.copyWith(
                            color: GlobalMainColor.globalPrimaryBlackColor,
                            letterSpacing: -0.28,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      UserDataSource()
                          .putFavoriteStore(widget.storeData[widget.index].id);
                      setState(() {
                        favorite = !favorite;
                      });
                    },
                    child: favorite
                        ? SvgPicture.asset(
                            'assets/icons/selected_like_function.svg')
                        : SvgPicture.asset('assets/icons/like_function.svg'),
                  ),
                  SizedBox(width: 15.w),
                  GestureDetector(
                    onTap: () {
                      UserDataSource()
                          .putNoticeStore(widget.storeData[widget.index].id);
                      setState(() {
                        notice = !notice;
                      });
                    },
                    child: notice
                        ? SvgPicture.asset(
                            'assets/icons/selected_alert_function.svg')
                        : SvgPicture.asset('assets/icons/alert_function.svg'),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}