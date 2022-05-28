import 'package:flutter/material.dart';
import 'package:new_map/datas_and_imports/imports.dart';
void main() {
  runApp(pageTwo());
}

class pageTwo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  final List<PlacesDataModel> Placedata = List.generate(
      placename.length,
      (index) => PlacesDataModel(
          '${placename[index]}',
          '${url[index]}',
          '${place_desc[index]} ',
          '${hotel[index]} ',
          lat[index],
          long[index]));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
        //backgroundColor: Color(0x44000000),
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        elevation: 0,
      ),
      backgroundColor: Color.fromARGB(255, 26, 25, 25),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 40,
              margin: const EdgeInsets.fromLTRB(10, 20.0, 0, 0),
              child:  Text(
                "Discover ",
                style: GoogleFonts.manrope(
                            textStyle: const TextStyle(fontSize: 35) ,
                           // fontWeight: FontWeight.bold,
                            color:Colors.white,
                          ),
              ),
            ),
            Container(
              height: 25,
              margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                   Text(
                    "Popular ",
                    style: GoogleFonts.manrope(
                            textStyle: const TextStyle(fontSize: 12) ,
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          )
                  ),
                   Text(
                    "Featured ",
                    style:
                        GoogleFonts.manrope(
                            textStyle: const TextStyle(fontSize: 12) ,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 97, 86, 86),
                          )
                  ),
                   Text(
                    " Top rated ",
                    style: GoogleFonts.manrope(
                            textStyle: const TextStyle(fontSize: 12) ,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 97, 86, 86),
                          )
                  ),
                  Text(
                    "Recent ",
                    style: GoogleFonts.manrope(
                            textStyle: const TextStyle(fontSize: 12) ,
                            fontWeight: FontWeight.bold,
                            color: Color.fromARGB(255, 97, 86, 86),
                          ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 400,
              width: 600,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    SizedBox(
                      height: 400,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: Placedata.length,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              height: 400,
                              width: 400,
                              child: Column(children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(
                                            builder: (context) => PlacesDetail(
                                                  placesDataModel:
                                                      Placedata[index],
                                                )));
                                  },
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    children: [
                                      Stack(
                                        children: <Widget>[
                                          Container(
                                              height: 380,
                                              width: 400,
                                              decoration: const BoxDecoration(),
                                              child: Image.asset(
                                                  Placedata[index].ImageUrl,
                                                  fit: BoxFit.fill)),
                                          Container(
                                            margin: const EdgeInsets.fromLTRB(
                                                40, 250.0, 0, 0),
                                            child: Column(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(Placedata[index].name,
                                                    style:GoogleFonts.manrope(
                            textStyle: const TextStyle(fontSize: 25) ,
                            fontWeight: FontWeight.w800,
                            color: Colors.white,
                          )),
                                                IconButton(
                                                  icon: Icon(
                                                      Icons
                                                          .location_on_outlined,
                                                      color: Colors.white),
                                                  onPressed: () =>
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder:
                                                                  (context) =>
                                                                      EntotoMap(
                                                                        placesDataModel:
                                                                            Placedata[index],
                                                                      ))),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                )
                              ]),
                            );
                          }),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 26, 25, 25),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 26, 25, 25),
              ),
              child: Text(
                'Basic words to know in Amharic',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
            ),
            //
            ListTile(
              title: const Text(
                'Water means Wuha ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
           
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Food means Migb',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Hi means Selam',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text(
                'Name means sim',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
              ),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
