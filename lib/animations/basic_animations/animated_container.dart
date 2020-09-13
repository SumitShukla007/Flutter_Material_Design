import 'package:flutter/material.dart';

bool _isClicked = false;

class AnimContainerScreen extends StatefulWidget {
  @override
  _AnimContainerScreenState createState() => _AnimContainerScreenState();
}

class _AnimContainerScreenState extends State<AnimContainerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: _animate,
          child: AnimatedContainer(
            duration: Duration(seconds: 1),
            width: _isClicked ? 150.0 : 250.0,
            height: _isClicked ? 150.0 : 300.0,
            color: _isClicked ? Colors.red : Colors.green,
            curve: Curves.ease,
            child: Center(
              child: Text(
                "Container",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
            ),
          ),
        ),
      ),
    );
  }

  _animate() {
    setState(() {
      _isClicked = !_isClicked;
    });
  }
}
