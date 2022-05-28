import 'package:new_map/models/PlacesDataModel.dart';
import 'package:flutter/material.dart';

class PlacesDetail extends StatelessWidget {
  final PlacesDataModel placesDataModel;

  const PlacesDetail({Key? key, required this.placesDataModel})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(placesDataModel.name),
      ),
      body: Container(
        color: Color.fromARGB(255, 26, 25, 25),
        child: DefaultTabController(
          length: 2, // length of tabs
          initialIndex: 0,
          child: Column(
            children: [
              Container(
                  height: MediaQuery.of(context).size.height / 1.7,
                  width: MediaQuery.of(context).size.width,
                  child:
                      Image.asset(placesDataModel.ImageUrl, fit: BoxFit.fill)),
              Container(
                child: TabBar(
                  labelColor: Colors.white,
                  unselectedLabelColor: Colors.grey,
                  tabs: [
                    const Tab(text: 'About'),
                    const Tab(text: 'Hotels'),
                  ],
                ),
              ),
              Container(
                  height: 160,
                  width: 300, //height of TabBarView
                  decoration: BoxDecoration(
                      border: Border(
                          top: BorderSide(color: Colors.grey, width: 0.5))),
                  child: TabBarView(children: <Widget>[
                    Container(
                      child: Center(
                          child: Text(
                        placesDataModel.desc,
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      )),
                    ),
                    Container(
                      child: Center(
                        child: Text(
                          placesDataModel.hotel,
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
