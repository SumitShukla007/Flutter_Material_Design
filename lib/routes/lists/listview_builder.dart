import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class ListBuilder extends StatefulWidget {
  @override
  _ListBuilderState createState() => _ListBuilderState();
}

class _ListBuilderState extends State<ListBuilder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Builder"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text("Item ${index + 1}"),
                onTap: () {},
              ),
            );
          },
        ),
      ),
    );
  }

  getTextData() {
    return Text(Constants.SUBTITLE_LONG_TEXT);
  }

  getSmallTextData() {
    return Text(Constants.SUBTITLE_SMALL_TEXT);
  }
}
