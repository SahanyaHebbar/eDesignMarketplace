import 'package:flutter/material.dart';
import 'splashScreen.dart';
import 'loginpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashScreen(),
      routes: {
        '/welcomepage': (context) => LoginPage(),
        '/homepage': (context) => LoginPage(),
      },
    );
  }
}
