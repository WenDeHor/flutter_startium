import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_flip_card/flutter_flip_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Remove the debug banner
      debugShowCheckedModeBanner: false,
      title: 'KindaCode.com',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    FlipCardController _cong = FlipCardController();
    return Scaffold(
      appBar: AppBar(title: const Text('Flip card')),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FlipCard(
              rotateSide: RotateSide.bottom,
              onTapFlipping: true,
              //When enabled, the card will flip automatically when touched.
              axis: FlipAxis.vertical,
              controller: _cong,
              frontWidget: Center(
                  child: Container(
                height: 450,
                width: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60), // Image border
                  child: SizedBox.fromSize(
                      size: Size.fromRadius(50), // Image radius
                      child: Image.asset('assets/1111.jpg', fit: BoxFit.cover)),
                ),
              )),
              backWidget: Center(
                child: Container(
                  height: 450,
                  width: 300,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(60), // Image border
                    child: SizedBox.fromSize(
                        size: Size.fromRadius(50), // Image radius
                        child:
                            Image.asset('assets/2222.jpg', fit: BoxFit.cover)),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget customCard(String title) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      color: Colors.blue,
      child: Container(
        height: 225,
        width: 150,
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

//class UserPanel extends StatefulWidget {
////  const UserPanel({super.key});
//
////  const UserPanel({Key key}) : super(key: key);
//  @override
//  _UserPanelState createState() => _UserPanelState();
//
//}
//
//class _UserPanelState extends State<UserPanel> {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      backgroundColor: Colors.white70,
//      appBar: AppBar(
//        title: Text('First app title'),
//        centerTitle: true,
//        backgroundColor: Colors.black45,
//      ),
//      body: SafeArea(
//        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
//          Column(
//            children: [
//              Padding(padding: EdgeInsets.only(top: 20)),
//              CircleAvatar(
//                backgroundImage: AssetImage('assets/1111.jpg'),
//                radius: 50,
//              ),
//              Padding(padding: EdgeInsets.only(top: 10)),
//              Text(
//                'Jone Deer',
//                style: TextStyle(
//                    fontSize: 25,
//                    color: Colors.deepOrange,
//                    fontFamily: 'DeliciousHandrawn'),
//              ),
//              Padding(padding: EdgeInsets.only(top: 10)),
//              Row(
//                children: [
//                  Icon(Icons.account_circle, size: 50, color: Colors.lightBlue),
//                  Padding(padding: EdgeInsets.only(left: 10)),
//                  CircleAvatar(backgroundImage: AssetImage('assets/1111.jpg')),
//                  Padding(padding: EdgeInsets.only(left: 10)),
//                  Text(
//                    "Volodymyr Mazur",
//                    style: TextStyle(color: Colors.lightBlue),
//                  )
//                ],
//              )
//            ],
//          ),
//        ]),
//      ),
//    );
//  }
//}
