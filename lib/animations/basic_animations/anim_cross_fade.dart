import 'package:flutter/material.dart';

bool _visible = true;

class AnimCrossFade extends StatefulWidget {
  @override
  _AnimCrossFadeState createState() => _AnimCrossFadeState();
}

class _AnimCrossFadeState extends State<AnimCrossFade> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: <Widget>[
              AnimatedCrossFade(
                duration: const Duration(seconds: 2),
                firstChild: const FlutterLogo(style: FlutterLogoStyle.horizontal, size: 250.0),
                firstCurve: Curves.fastOutSlowIn,
                secondChild: const FlutterLogo(style: FlutterLogoStyle.stacked, size: 250.0),
                secondCurve: Curves.fastOutSlowIn,
                crossFadeState: _visible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              ),
              FlatButton(
                onPressed: () {
                  setState(() {
                    _visible = !_visible;
                  });
                },
                child: Text("Click me"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
