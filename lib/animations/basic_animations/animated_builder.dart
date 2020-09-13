import 'package:flutter/material.dart';

class AnimBuilderScreen extends StatefulWidget {
  @override
  _AnimBuilderScreenState createState() => _AnimBuilderScreenState();
}

class _AnimBuilderScreenState extends State<AnimBuilderScreen> with SingleTickerProviderStateMixin {
  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(duration: const Duration(seconds: 3), vsync: this);
    _controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedBuilder(
          animation: _controller,
          child: Container(width: 200.0, height: 200.0, color: Colors.green),
          builder: (BuildContext context, Widget child) {
            return Transform.scale(
              // angle: _controller.value * 2.0 * 2.0,
              scale: _controller.value,
              child: child,
            );
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
