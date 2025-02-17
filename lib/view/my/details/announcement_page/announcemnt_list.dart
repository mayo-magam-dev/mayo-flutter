part of 'announcement_page.dart';

class _Lists extends StatefulWidget {
  const _Lists();

  @override
  State<_Lists> createState() => _ListsState();
}

class _ListsState extends State<_Lists> {
  final BoardDataSource _boardDataSource = BoardDataSource();
  late Future<List<Board>> _announcementsFuture;
  final List<bool> _expandedItems = [];

  @override
  void initState() {
    super.initState();
    _announcementsFuture = _fetchAnnouncements();
  }

  Future<List<Board>> _fetchAnnouncements() async {
    try {
      final notices = await _boardDataSource.getNotice();
      _expandedItems.addAll(List.generate(notices.length, (_) => false));
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
        return SingleChildScrollView(
          child: ExpansionPanelList(
            elevation: 0,
            expandedHeaderPadding: EdgeInsets.zero,
            expansionCallback: (index, isExpanded) {
              setState(() {
                // isExpanded가 현재 상태이므로, 반대로 설정할 때는 그대로 할당
                _expandedItems[index] = !_expandedItems[index];
              });
            },
            children: announcements.asMap().entries.map((entry) {
              final index = entry.key;
              final item = entry.value;
              return ExpansionPanel(
                headerBuilder: (context, isExpanded) {
                  return _AnnouncementListItem(item: item);
                },
                body: _AnnouncementContent(item: item),
                isExpanded: _expandedItems[index],
                canTapOnHeader: true,
                backgroundColor: Colors.white,
              );
            }).toList(),
          ),
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
            DateFormat('yyyy/MM/dd').format(item.writeTime),
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

class _AnnouncementContent extends StatelessWidget {
  const _AnnouncementContent({
    required this.item,
  });

  final Board item;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Divider(
            height: 1,
            thickness: 1,
            color: GlobalMainGrey.grey100,
          ),
          const SizedBox(height: 20),
          Text(
            item.content,
            style: AppTextStyle.body2Bold.copyWith(
              color: GlobalMainColor.globalPrimaryBlackColor,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            item.writer,
            style: AppTextStyle.body2Medium.copyWith(
              color: GlobalMainGrey.grey600,
            ),
            textAlign: TextAlign.end,
          ),
        ],
      ),
    );
  }
}
