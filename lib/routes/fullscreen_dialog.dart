import 'package:flutter/material.dart';

class FullScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Full Screen'),),
      backgroundColor: Colors.white.withOpacity(0.85),
      body: Center(
        child: FlutterLogo(size: 160,),
      ),
    );
  }
}
