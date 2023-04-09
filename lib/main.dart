import 'package:flutter/material.dart';
import 'package:flutter_startium/pages/home.dart';
import 'package:flutter_startium/pages/main_screen.dart';


void main() => runApp(MaterialApp(
      theme: ThemeData(primaryColor: Colors.white70),
      initialRoute: '/',
      routes: {
        '/': (context) => MainScreen(),
        '/todo': (context) => Home(),
      },
    ));
