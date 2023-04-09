import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue[900],
          title: Text('List tasks'),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Text(
              'Main screen',
              style: TextStyle(color: Colors.green),
            ),
            ElevatedButton(
                onPressed: () {
//              Navigator.pushNamed(context, '/todo'); // up page
//                  Navigator.pushNamedAndRemoveUntil(
//                      context, '/todo', (route) => true); // with beck navigator rowe
                  Navigator.pushReplacementNamed(context, '/todo'); //new page
                },
                child: Text('Go HOME'))
          ],
        ));
  }
}
