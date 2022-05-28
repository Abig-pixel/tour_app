import 'package:flutter/material.dart';
import 'package:new_map/datas_and_imports/imports.dart';
class EntotoMap extends StatefulWidget {
  final PlacesDataModel placesDataModel;
  const EntotoMap({Key? key, required this.placesDataModel}) : super(key: key);

  @override
  State<EntotoMap> createState() => _EntotoMapState();
}

class _EntotoMapState extends State<EntotoMap> {
  late GoogleMapController mapController;

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
    position: LatLng(9.039611327243199, 38.766221321536214,),
    infoWindow: InfoWindow(title: 'Bherawi museum'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker marker2 = Marker(
    markerId: MarkerId('Marker2'),
    position: LatLng(9.02058778141883, 38.75999405721476,),
    infoWindow: InfoWindow(title: 'Sheraton Hotel'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
   Marker marker3 = Marker(
    markerId: MarkerId('Marker2'),
    position: LatLng(9.01878579091243, 38.764911552107726,),
    infoWindow: InfoWindow(title: 'Hilton hotel'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
    Marker marker4 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(9.023744776291512, 38.76081313672761),
    infoWindow: InfoWindow(title: 'Addis park'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
    Marker marker5 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(9.008951150260751, 38.764425956584596),
    infoWindow: InfoWindow(title: 'Flamingo restaurant'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
    Marker marker6 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(8.981579150837295, 38.733403696017916),
    infoWindow: InfoWindow(title: 'tumbe guest house'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
    Marker marker7 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(8.978490333805814, 38.731914728068055),
    infoWindow: InfoWindow(title: 'Spice grill'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
   Marker marker8 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(8.978490333805814, 38.731914728068055),
    infoWindow: InfoWindow(title: 'Spice grill'),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
    Marker marker9 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(8.992712666628154, 38.79529045015667),
    infoWindow: InfoWindow(title: 'Bora '),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  Marker marker10 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(8.999290055962856, 38.78577715914286),
    infoWindow: InfoWindow(title: 'Edna mol '),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
   Marker marker11 = Marker(
    markerId: MarkerId('Marker1'),
    position: LatLng(9.010623421226956, 38.774100981218496),
    infoWindow: InfoWindow(title: 'Emamet geust house '),
    icon: BitmapDescriptor.defaultMarkerWithHue(BitmapDescriptor.hueViolet),
  );
  markers.add(marker1);
  markers.add(marker2);
  markers.add(marker3);
  markers.add(marker4);
  markers.add(marker5);
  markers.add(marker6);
  markers.add(marker7);
  markers.add(marker8);
  markers.add(marker9);
  markers.add(marker10);
  markers.add(marker11);
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBodyBehindAppBar: true,
        body: SafeArea(
          child: GoogleMap(
            onTap: (LatLng){

            },
            myLocationButtonEnabled: true,
            myLocationEnabled: true,
            onMapCreated: _onMapCreated,
            initialCameraPosition: CameraPosition(
              target: LatLng(
                  widget.placesDataModel.lat, widget.placesDataModel.long),
              zoom: 17.0,
            ),
            markers: markers.map((e) => e).toSet(),
            
          ),
        ),
      ),
    );
  }
}
