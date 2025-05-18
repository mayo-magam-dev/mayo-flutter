import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:mayo_flutter/bloc/store/store_bloc.dart';
import 'package:mayo_flutter/bloc/store/store_event.dart';
import 'package:mayo_flutter/bloc/store/store_state.dart';
import 'package:mayo_flutter/dataSource/item.dart';
import 'package:mayo_flutter/dataSource/map.dart';
import 'package:mayo_flutter/dataSource/store.dart';
import 'package:mayo_flutter/dataSource/user.dart';
import 'package:mayo_flutter/designSystem/color.dart';
import 'package:mayo_flutter/designSystem/fontsize.dart';
import 'package:mayo_flutter/model/item/read_item.dart';
import 'package:mayo_flutter/model/store/read_store.dart';
import 'package:mayo_flutter/view/components/proudct.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';
import 'package:url_launcher/url_launcher.dart';

part 'store_scaffold.dart';
part 'store_info_header.dart';
part 'store_info_main.dart';
part 'store_info_section.dart';
part 'store_origin_info.dart';
part 'store_map.dart';

class StorePage extends StatefulWidget {
  const StorePage({super.key, required this.id});

  final String id;

  @override
  State<StorePage> createState() => _StorePageState();
}

class _StorePageState extends State<StorePage> {
  late final Future<(ReadStore, List<ReadItem>)> _storeDataFuture;

  @override
  void initState() {
    super.initState();
    _storeDataFuture = fetchStoreData();
  }

  Future<(ReadStore, List<ReadItem>)> fetchStoreData() async {
    final results = await Future.wait([
      StoreDataSource().getStoreDetail(widget.id),
      ItemDataSource().getItemsByStoreId(widget.id),
    ]);
    return (results[0] as ReadStore, results[1] as List<ReadItem>);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => StoreBloc()..add(ChangeViewEvent(0)),
      child: FutureBuilder<(ReadStore, List<ReadItem>)>(
        future: _storeDataFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState != ConnectionState.done) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }

          if (!snapshot.hasData || snapshot.hasError) {
            return const Scaffold(
              body: Center(child: Text("데이터를 불러올 수 없습니다.")),
            );
          }

          final store = snapshot.data!.$1;
          final items = snapshot.data!.$2;

          return _Scaffold(
            topBar: Topbar(title: store.storeName, showCarts: false),
            infoHeader: _StoreInfoHeader(storeData: store),
            infoMain: _StoreInfoMain(storeData: store, itemData: items),
          );
        },
      ),
    );
  }
}
