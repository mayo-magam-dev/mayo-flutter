part of 'announcement_page.dart';

class _Lists extends StatefulWidget {
  const _Lists();

  @override
  State<_Lists> createState() => _ListsState();
}

class _ListsState extends State<_Lists> {
  final BoardDataSource _boardDataSource = BoardDataSource();
  late Future<List<Board>> _announcementsFuture;

  @override
  void initState() {
    super.initState();
    _announcementsFuture = _fetchAnnouncements();
  }

  Future<List<Board>> _fetchAnnouncements() async {
    try {
      final notices = await _boardDataSource.getNoticeBoard();
      return notices;
    } catch (e) {
      debugPrint(e.toString());
      throw Exception('공지사항을 불러오는데 실패했습니다');
    }
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Board>>(
      future: _announcementsFuture,
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
                      _announcementsFuture = _fetchAnnouncements();
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
            child: Text(
              '공지사항이 없습니다',
              style: AppTextStyle.body1Medium,
            ),
          );
        }

        final announcements = snapshot.data!;
        return ListView.separated(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: announcements.length,
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
            final item = announcements[index];
            return InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnnouncementDetailPage(board: item),
                  ),
                );
              },
              child: _AnnouncementListItem(item: item),
            );
          },
        );
      },
    );
  }
}

class _AnnouncementListItem extends StatelessWidget {
  const _AnnouncementListItem({
    required this.item,
  });

  final Board item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 15,
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
          SizedBox(height: 10.h),
          Text(
            DateFormat('yyyy/MM/dd').format(item.writeTime!),
            style: AppTextStyle.body2Medium.copyWith(
              color: GlobalMainGrey.grey600,
              letterSpacing: -0.28,
            ),
          ),
        ],
      ),
    );
  }
}
