import 'package:flutter/material.dart';
import 'package:new_map/screens/maps.dart';
import 'package:flutter/material.dart';
import 'package:new_map/screens/page_two.dart';
import 'package:google_fonts/google_fonts.dart';
void main() => runApp(
      MaterialApp(debugShowCheckedModeBanner: false, home: MyHomePage()),
    );
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            constraints: BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/perfecty_front.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(15, 40.0, 15, 15),
              //margin: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                   Text("Welcome to \nAddis \nAbaba",
                      style: GoogleFonts.manrope(
                            textStyle: const TextStyle(fontSize: 40) ,
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          ),
                ),
                  
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 20.0, 0, 0),
                    child: Row(
                      children: [
                        IconButton(
                          icon: const Icon(Icons.location_on_outlined,
                              color: Colors.white),
                          onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GoogleMapScreen())),
                        ),
                         Text("Addis Ababa",
                            style:
                                GoogleFonts.manrope(
                            textStyle: const TextStyle(fontSize: 15) ,
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          )
                                ),
                      ],
                    ),
                  ),
                  Spacer(flex: 3),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => pageTwo()));
                    },
                    child:  Text("Get Started",
                      style:GoogleFonts.manrope(
                            fontWeight: FontWeight.bold,
                            color:Colors.white,
                          )),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            Color.fromARGB(255, 148, 78, 255)),
                        minimumSize: MaterialStateProperty.all(Size(340, 60))),
                  )
                ],
              )),
        ],
      ),
    );
  }
}
