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
              title: Text('Test app by progect'),
              backgroundColor: Colors.deepOrangeAccent,
              centerTitle: true,
            ),
            body: Center(
              child: Text(
                'Text of my body',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.red,
                    fontFamily: 'DeliciousHandrawn'
                ),
              ),
            ),
            floatingActionButton: FloatingActionButton(
              child: Text('Press'),
              backgroundColor: Colors.deepOrangeAccent,
              onPressed: (){
                print('press');
              },
            ),
        ),
    );
  }
}
