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
        body: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('data'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Button',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontFamily: 'DeliciousHandrawn'),
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text('data'),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Button',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.red,
                        fontFamily: 'DeliciousHandrawn'),
                  ),
                )
              ],
            )
          ],
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
