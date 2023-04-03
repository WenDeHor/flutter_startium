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
        body: Center(
          child: ElevatedButton.icon(
            onPressed: () {},
            icon: const Icon(
              Icons.supervised_user_circle_rounded,
              color: Colors.deepOrangeAccent,
            ),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(const Color.fromRGBO(106, 194, 252, 50.0)),
                shape: MaterialStateProperty.all(RoundedRectangleBorder( borderRadius: BorderRadius.circular(10) ))
            ),
            label: const Text('Press me'),
          ),
//          child: Icon(
//            Icons.supervised_user_circle_rounded,
//            size: 45,
//            color: Colors.deepOrangeAccent,
//          ),
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
