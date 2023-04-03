import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  return runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.deepOrangeAccent), //Not working
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Test app by progect'),
          backgroundColor: Colors.deepOrangeAccent,
          centerTitle: true,
        ),
        body: Container(
          child: const Text('Test app by progect'),
          color: Colors.deepOrangeAccent,
//          margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.5),
          margin: EdgeInsets.fromLTRB(10.0, 50.0, 80.0, 100.0),
//          margin: EdgeInsets.all(20.5),
//          padding: EdgeInsets.all(5.5),
//          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 50.5),
          padding: EdgeInsets.fromLTRB(10.0, 50.0, 80.0, 100.0),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.deepOrangeAccent,
          onPressed: () {
            print('press');
          },
          child: const Text('Press'),
        ),
      ),
    );
  }
}
