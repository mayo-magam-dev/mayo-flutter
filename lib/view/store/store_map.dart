part of 'store_page.dart';

class _StoreMap extends StatefulWidget {
  const _StoreMap({required this.storeData});

  final ReadStore storeData;

  @override
  State<_StoreMap> createState() => _StoreMapState();
}

class _StoreMapState extends State<_StoreMap> {
  late KakaoMapController mapController;
  Set<Marker> markers = {};
  late Future<void> _geocodeFuture;
  bool isMapReady = false;

  @override
  void initState() {
    super.initState();
    _geocodeFuture = _loadGeocode();
  }

  Future<void> _loadGeocode() async {
    final value = await MapDataSource().getGeocode(widget.storeData.address);
    final marker = Marker(
      markerId: UniqueKey().toString(),
      latLng: LatLng(
        double.parse(value.documents[0].y),
        double.parse(value.documents[0].x),
      ),
    );

    markers.add(marker);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<void>(
      future: _geocodeFuture,
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.done) {
          return const Center(child: CircularProgressIndicator());
        }

        return Column(
          children: [
            SizedBox(
              width: 320.w,
              height: 262.h,
              child: KakaoMap(
                onMapCreated: (controller) {
                  mapController = controller;
                  if (!isMapReady) {
                    setState(() {
                      isMapReady = true;
                    });
                  }
                },
                markers: markers.toList(),
                center: markers.first.latLng,
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.location_on, size: 20.sp),
                Text(widget.storeData.address, style: AppTextStyle.body1Medium),
              ],
            ),
          ],
        );
      },
    );
  }
}
