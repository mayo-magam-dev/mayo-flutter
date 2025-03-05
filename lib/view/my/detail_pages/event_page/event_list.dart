part of 'event_page.dart';

class _List extends StatefulWidget {
  const _List();

  @override
  State<_List> createState() => _ListState();
}

class _ListState extends State<_List> {
  final BoardDataSource _boardDataSource = BoardDataSource();
  late Future<List<Board>> _eventsFuture;

  @override
  void initState() {
    super.initState();
    _eventsFuture = _fetchEvents();
  }

  Future<List<Board>> _fetchEvents() async {
    try {
      final events = await _boardDataSource.getEventBoard();
      return events;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception('이벤트를 불러오는데 실패했습니다');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Board>>(
      future: _eventsFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        if (snapshot.hasError) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  snapshot.error.toString(),
                  style: AppTextStyle.body1Medium,
                ),
                const SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    setState(() {
                      _eventsFuture = _fetchEvents();
                    });
                  },
                  child: const Text('다시 시도'),
                ),
              ],
            ),
          );
        }

        if (!snapshot.hasData || snapshot.data!.isEmpty) {
          return Center(
            child: Column(
              children: [
                SizedBox(height: 227.h),
                SvgPicture.asset('assets/icons/bread.svg'),
                SizedBox(height: 22.h),
                Text(
                  '이벤트 빵 개',
                  style: AppTextStyle.heading2Bold.copyWith(
                    color: GlobalMainColor.globalPrimaryBlackColor,
                    letterSpacing: -0.48,
                  ),
                ),
                SizedBox(height: 20.h),
                Text(
                  '아직은 진행 중인 이벤트가 없어요.\n마요가 곧 즐거운 이벤트 소식으로 찾아뵐게요!',
                  style: AppTextStyle.body1Medium.copyWith(
                    color: GlobalMainColor.globalPrimaryBlackColor,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          );
        }

        final events = snapshot.data!;
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: events.length,
          separatorBuilder: (context, index) => Container(
            decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 0.3,
                  color: GlobalMainGrey.grey200,
                ),
              ),
            ),
          ),
          itemBuilder: (context, index) {
            final item = events[index];
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 24,
                vertical: 17,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    item.title,
                    style: AppTextStyle.body1Medium.copyWith(
                      color: GlobalMainColor.globalPrimaryBlackColor,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  Text(
                    DateFormat('yyyy/MM/dd').format(item.writeTime),
                    style: AppTextStyle.body1Medium.copyWith(
                      color: GlobalMainGrey.grey600,
                    ),
                  ),
                  if (item.image != null) ...[
                    SizedBox(height: 8.h),
                    Image.network(
                      item.image!,
                      width: double.infinity,
                      height: 193.h,
                      fit: BoxFit.cover,
                    ),
                  ],
                  SizedBox(height: 8.h),
                  Text(
                    item.content,
                    style: AppTextStyle.body2Medium.copyWith(
                      color: GlobalMainGrey.grey600,
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
