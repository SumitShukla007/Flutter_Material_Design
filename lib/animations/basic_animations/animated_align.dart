import 'package:flutter/material.dart';

class AnimAlign extends StatefulWidget {
  @override
  AnimAlignState createState() => AnimAlignState();
}

class AnimAlignState extends State<AnimAlign> with SingleTickerProviderStateMixin {
  double _width = 250.0;
  double _height = 120.0;
  bool _visible = true;
  Alignment _alignment = Alignment.center;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Fade"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              getOpacityAnim(),
              SizedBox(
                height: 16.0,
              ),
              getAnimatedAlign()
            ],
          ),
        ),
      ),
    );
  }

  getAnimatedAlign() {
    debugPrint("getAnimatedAlign");

    return GestureDetector(
      onTap: _animate,
      child: Container(
        width: _width,
        height: _height,
        color: Colors.green,
        child: AnimatedAlign(
          curve: Curves.ease,
          alignment: _alignment,
          duration: Duration(milliseconds: 500),
          child: Text(
            "Animated Align",
            style: TextStyle(color: Colors.white, fontSize: 18.0),
          ),
        ),
      ),
    );
  }

  getOpacityAnim() {
    return GestureDetector(
      onTap: _onTap,
      child: AnimatedOpacity(
        opacity: _visible ? 1.0 : 0.0,
        duration: Duration(seconds: 1),
        child: Container(
          width: _width,
          height: _height,
          color: Colors.green,
          child: Center(
            child: Text(
              "Animated Opacity",
              style: TextStyle(color: Colors.white, fontSize: 18.0),
            ),
          ),
        ),
      ),
    );
  }

  _onTap() {
    setState(() {
      _visible = !_visible;
    });
  }

  void _animate() {
    setState(() {
      debugPrint("${_alignment == Alignment.center}");

      _alignment == Alignment.center ? _alignment = Alignment.bottomLeft : _alignment = Alignment.center;
    });

    debugPrint("Alignment: $_alignment");
  }
}
