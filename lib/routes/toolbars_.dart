import 'package:flutter/material.dart';

class ToolbarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title"),
        leading: Icon(Icons.arrow_back),
      ),
    );
  }
}
