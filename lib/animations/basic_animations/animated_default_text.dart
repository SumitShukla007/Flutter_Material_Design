import 'package:flutter/material.dart';

class AnimatedText extends StatefulWidget {
  @override
  _AnimatedTextState createState() => _AnimatedTextState();
}

class _AnimatedTextState extends State<AnimatedText> {
  bool _changeStyle = true;
  double _fontSize = 60;
  Color _color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              height: 120,
              child: AnimatedDefaultTextStyle(
                duration: const Duration(milliseconds: 300),
                style: TextStyle(
                  fontSize: _fontSize,
                  color: _color,
                  fontWeight: FontWeight.bold,
                ),
                child: Text('Flutter'),
              ),
            ),
            FlatButton(
              onPressed: () {
                setState(() {
                  _fontSize = _changeStyle ? 90 : 60;
                  _color = _changeStyle ? Colors.blue : Colors.red;
                  _changeStyle = !_changeStyle;
                });
              },
              child: Text(
                "CLICK ME!",
              ),
            )
          ],
        ),
      ),
    );
  }
}
