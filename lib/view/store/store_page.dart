import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:mayo_flutter/bloc/store/store_bloc.dart';
import 'package:mayo_flutter/bloc/store/store_event.dart';
import 'package:mayo_flutter/bloc/store/store_state.dart';
import 'package:mayo_flutter/dataSource/item.dart';
import 'package:mayo_flutter/dataSource/store.dart';
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
  late Future<ReadStore?> store;
  late Future<List<ReadItem?>> storeItems;

  @override
  void initState() {
    super.initState();
    store = StoreDataSource().getStoreDetail(widget.id);
    storeItems = ItemDataSource().getItemsByStoreId(widget.id);
  }

  Future<(ReadStore, List<ReadItem>)> featchStoreData(String storeId) async {
    final results = await Future.wait([store, storeItems]);
    return (results[0] as ReadStore, results[1] as List<ReadItem>);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreBloc()..add(ChangeViewEvent(0)),
      child: FutureBuilder(
        future: featchStoreData(widget.id),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.waiting:
              return CircularProgressIndicator();
            default:
              if (snapshot.hasError) {
                return Text('데이터를 불러올 수 없습니다.');
              } else {
                return _Scaffold(
                  topBar: Topbar(
                    title: snapshot.data!.$1.storeName,
                    showCarts: false,
                  ),
                  infoHeader: _StoreInfoHeader(storeData: snapshot.data!.$1),
                  infoMain: _StoreInfoMain(
                      storeData: snapshot.data!.$1,
                      itemData: snapshot.data!.$2),
                );
              }
          }
        },
      ),
    );
  }
}
