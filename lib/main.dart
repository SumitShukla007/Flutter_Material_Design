import 'package:flutter/material.dart';
import 'package:materialdesignflutter/routes/home_screen.dart';

void main() {
  runApp(MyMaterialApp());
}

class MyMaterialApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Home",
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'OpenSans',
        primaryColor: Colors.blue[500],
        primaryColorDark: Colors.blue[700],
        accentColor: Colors.deepOrange[500],
      ),
      home: HomeScreen(),
    );
  }
}
