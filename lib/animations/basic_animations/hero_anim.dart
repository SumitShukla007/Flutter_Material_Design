import 'package:flutter/material.dart';

class HeroAnimScreen extends StatefulWidget {
  @override
  _HeroAnimScreenState createState() => _HeroAnimScreenState();
}

class _HeroAnimScreenState extends State<HeroAnimScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Hero Page1"),
        ),
        body: Page1(),
      ),
    );
  }
}

class Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
        context,
        PageRouteBuilder(
          transitionDuration: Duration(seconds: 1),
          pageBuilder: (_, __, ___) => Page2(),
        ),
      ),
      child: Align(
        alignment: Alignment.topCenter,
        child: Hero(
          tag: "profile_img",
          child: Container(
            child: Image.asset(
              "images/img.webp",
              width: 150.0,
              height: 150.0,
            ),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Page2"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Hero(
            tag: 'profile_img',
            child: Container(
              width: double.infinity,
              height: 300.0,
              child: Image.asset(
                "images/img.webp",
              ),
            ),
          ),
        ),
      ),
    );
  }
}
