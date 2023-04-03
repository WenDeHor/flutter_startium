import 'package:flutter/material.dart';

void main() {
  return runApp(MaterialApp(
    home: UserPanel(),
  ));
}

class UserPanel extends StatelessWidget {
//  const UserPanel({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        title: Text('First app title'),
        centerTitle: true,
        backgroundColor: Colors.black45,
      ),
      body: SafeArea(
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Column(
            children: [
              Padding(padding: EdgeInsets.only(top: 20)),
              CircleAvatar(
                backgroundImage: AssetImage('assets/1111.jpg'),
                radius: 50,
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Text(
                'Jone Deer',
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.deepOrange,
                    fontFamily: 'DeliciousHandrawn'),
              ),
              Padding(padding: EdgeInsets.only(top: 10)),
              Row(
                children: [
                  Icon(Icons.account_circle, size: 50, color:  Colors.lightBlue),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  CircleAvatar(
                      backgroundImage: AssetImage('assets/1111.jpg')),
                  Padding(padding: EdgeInsets.only(left: 10)),
                  Text("Volodymyr Mazur", style: TextStyle(color: Colors.lightBlue),)
                ],
              )
            ],
          ),
        ]),
      ),
    );
  }
}
