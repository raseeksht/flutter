import 'package:flutter/material.dart';
import 'package:untitled/about.dart';
import 'package:untitled/common/route_constants.dart';
import 'package:untitled/contact.dart';
import 'site_drawer.dart';
import 'home.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Demo',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      fontFamily: "Poppins",
      // useMaterial3: true,
    ),
    initialRoute: RouteConstants.initialRoute,
    routes: {
      RouteConstants.initialRoute: (context) => MyApp(),
      RouteConstants.contactRoute: (context) => Contact(),
      RouteConstants.aboutUsRoute: (context) => About(),
    },
  ));
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final List<Widget> screens = [Home(),About(),Contact()];

  int currentIndex=0;



  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text(
          "App Title",
          style: TextStyle(
              fontStyle: FontStyle.italic,
              color: Colors.white,
              fontFamily: 'Comic Sans Ms'),
        )),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 20),
            child: Icon(Icons.logout),
          ),
        ],
      ),
      // body: SingleChildScrollView(
      //   child: Center(
      //     child: Column(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //         Container(
      //           padding:
      //               const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      //           decoration: BoxDecoration(
      //               color: Colors.black,
      //               borderRadius: BorderRadius.circular(20)),
      //           child: const Text(
      //             "Button 1 sp changed",
      //             style: TextStyle(
      //               color: Colors.yellowAccent,
      //               fontSize: 20,
      //             ),
      //           ),
      //         ),
      //         const Text(
      //           "Button 1",
      //           style: TextStyle(
      //             color: Colors.yellowAccent,
      //             backgroundColor: Colors.black,
      //             fontSize: 20,
      //           ),
      //         ),
      //         Image.asset(
      //           "assets/images/1.jpg",
      //           height: 400,
      //         ),
      //         Divider(
      //           height: 3,
      //         ),
      //         Image.asset(
      //           "assets/images/2.jpg",
      //           height: 355,
      //         ),
      //         Divider(
      //           height: 1,
      //         ),
      //         Image.asset(
      //           "assets/images/1.jpg",
      //           height: 400,
      //         ),
      //       ],
      //     ),
      //   ),
      // ),
      body: screens.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (selectedIndex)=>{
          setState(() {
            currentIndex = selectedIndex;
          })
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: "About Us",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call),
            label: "Contact Us",
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.call_end),
          //   label: "Mobile",
          // ),
        ],
      ),
      drawer: SideDrawer(),
    );
  }
}
