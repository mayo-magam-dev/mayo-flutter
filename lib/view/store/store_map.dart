part of 'store_page.dart';

class _StoreMap extends StatefulWidget {
  //ignore: unused_element
  const _StoreMap({super.key});

  @override
  State<_StoreMap> createState() => _StoreMapState();
}

class _StoreMapState extends State<_StoreMap> {
  late KakaoMapController mapController;

  Set<Marker> markers = {};

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 320.w,
          height: 262.h,
          child: KakaoMap(
            onMapCreated: ((controller) async {
              mapController = controller;
              markers.add(Marker(
                markerId: UniqueKey().toString(),
                latLng: await mapController.getCenter(),
              ));
              setState(() {});
            }),
            markers: markers.toList(),
            center: LatLng(37.3608681, 126.9306506),
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, size: 20.sp),
            Text("광주 동구 필문대로273번길 4 1층 힘쎈드위치", style: AppTextStyle.body1Medium),
          ],
        ),
      ],
    );
  }
}
