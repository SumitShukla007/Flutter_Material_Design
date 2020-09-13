import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class NormalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Normal")),
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: <Widget>[
            FlutterLogo(size: 150),
            SizedBox(height: 24.0),
            Text(Constants.SUBTITLE_LONG_TEXT),
            SizedBox(height: 24.0),
            Text(Constants.SUBTITLE_SMALL_TEXT),
            SizedBox(height: 24.0),
            Text(Constants.SUBTITLE_LONG_TEXT),
            SizedBox(height: 24.0),
            Text(Constants.SUBTITLE_LONG_TEXT),
          ],
        ),
      ),
    );
  }
}
