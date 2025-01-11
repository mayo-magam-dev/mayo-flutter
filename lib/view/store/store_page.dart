import 'package:flutter/material.dart';
import 'package:mayo_flutter/view/components/top_bar.dart';

part 'store_scaffold.dart';

class StorePage extends StatelessWidget {
  const StorePage({super.key});

  @override
  Widget build(BuildContext context) {
    return _Scaffold(
      topBar: Topbar(
        title: "가게 이름",
        showCarts: false,
      ),
      infoHeader: Text(""),
      infoMiddle: Text(""),
      infoBottom: Text(""),
    );
  }
}
