import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapScreen extends StatefulWidget {
  const GoogleMapScreen({Key? key}) : super(key: key);

  @override
  State<GoogleMapScreen> createState() => _GoogleMapScreenState();
}

class _GoogleMapScreenState extends State<GoogleMapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(9.005401, 38.763611);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }


  List<Marker> markers = [];
  @override 
  void initState(){
    intilize();
    super.initState();
  }
  intilize(){
     Marker marker1 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(9.022723986668431, 38.76338756004819,),
    infoWindow: InfoWindow(title: 'Unity park'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker marker2 = Marker(
    markerId: MarkerId('Marker2'),
    position: LatLng(9.027743545425961, 38.75933803708596,),
    infoWindow: InfoWindow(title: 'Freindship park'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
   Marker marker3 = Marker(
    markerId: MarkerId('Marker2'),
    position: LatLng(9.10225430093205, 38.777861507193215,),
    infoWindow: InfoWindow(title: 'Entoto park'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
    Marker marker4 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(8.978823846187938, 38.73107553861465),
    infoWindow: InfoWindow(title: 'Zooma museum'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
    Marker marker5 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(9.03816842793463, 38.761786452107884),
    infoWindow: InfoWindow(title: 'beherawi museum'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  markers.add(marker1);
  markers.add(marker2);
  markers.add(marker3);
  markers.add(marker4);
  markers.add(marker5);
 
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: GoogleMap(
            onTap: (LatLng){

            },
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            onMapCreated: _onMapCreated,
            
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
            markers: markers.map((e) => e).toSet(),
          ),
        ),
      ),
    );
  }
}
