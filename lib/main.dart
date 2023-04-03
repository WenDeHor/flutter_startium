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
          child: Image(
            image: AssetImage('assets/1111.jpg'),
//            image: NetworkImage('https://images.squarespace-cdn.com/content/v1/5c0f697e9d5abb8c65cd6857/1599032187414-92U41D7HVIIFVCHHBDA3/Artboard+2.png?format=1500w'),
          ),
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
