import 'package:flutter/material.dart';

class RippleScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Ripple Effect"),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            InkWell(
              onTap: () {},
              splashColor: Colors.grey[300],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Splash Ripple",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            Divider(height: 1),
            InkWell(
              onTap: () {},
              highlightColor: Colors.orange[300],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Hightlight Ripple",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            Divider(height: 1),
            InkWell(
              onTap: () {},
              splashColor: Colors.red[500],
              highlightColor: Colors.orange[300],
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  "Splash & Hightlight Ripple",
                  style: TextStyle(fontSize: 18.0),
                ),
              ),
            ),
            Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Icon Rectangle Ripple",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  InkResponse(
                    highlightShape: BoxShape.rectangle,
                    splashColor: Colors.yellow,
                    highlightColor: Colors.blue.withOpacity(0.5),
                    child: Icon(Icons.bookmark_border, size: 32),
                    onTap: () {},
                  ),
                ],
              ),
            ),
            Divider(height: 1),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Icon Circle Ripple",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  InkResponse(
                    highlightShape: BoxShape.circle,
                    splashColor: Colors.yellow,
                    highlightColor: Colors.blue.withOpacity(0.5),
                    child: Icon(Icons.bookmark_border, size: 32),
                    onTap: () {},
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
