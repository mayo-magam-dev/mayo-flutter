import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kakao_map_plugin/kakao_map_plugin.dart';
import 'package:mayo_flutter/bloc/store/store_bloc.dart';
import 'package:mayo_flutter/bloc/store/store_event.dart';
import 'package:mayo_flutter/bloc/store/store_state.dart';
import 'package:mayo_flutter/dataSource/cart.dart';
import 'package:mayo_flutter/dataSource/item.dart';
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
  @override
  void initState() {
    super.initState();
  }

  Future<(ReadStore, List<ReadItem>)> featchStoreData() async {
    final storeDetail = await StoreDataSource().getStoreDetail(widget.id);
    await Future.delayed(const Duration(seconds: 1));
    final storeItems = await ItemDataSource().getItemsByStoreId(widget.id);
    return (storeDetail, storeItems);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => StoreBloc()..add(ChangeViewEvent(0)),
      child: FutureBuilder(
        future: featchStoreData(),
        builder: (context, snapshot) {
          // return Text('${snapshot.data}');
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }

          return _Scaffold(
            topBar: Topbar(
              title: snapshot.data!.$1.storeName,
              showCarts: false,
            ),
            infoHeader: _StoreInfoHeader(storeData: snapshot.data!.$1),
            infoMain: _StoreInfoMain(
              storeData: snapshot.data!.$1,
              itemData: snapshot.data!.$2,
            ),
          );
        },
      ),
    );
  }
}
