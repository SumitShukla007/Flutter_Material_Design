import 'package:flutter/material.dart';

class TweenAnimScreen extends StatefulWidget {
  @override
  _TweenAnimScreenState createState() => _TweenAnimScreenState();
}

class _TweenAnimScreenState extends State<TweenAnimScreen> with SingleTickerProviderStateMixin {
  AnimationController controller;
  Animation<double> fadeInAnimation, scaleAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration: Duration(seconds: 2), vsync: this);
    fadeInAnimation = Tween<double>(begin: 0.0, end: 0.5).animate(controller);

    fadeInAnimation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        controller.reverse();
      } else {
        controller.forward();
      }
    });
    controller.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FadeTransition(
          opacity: fadeInAnimation,
          child: Text("Fading Text"),
        ),
      ),
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
