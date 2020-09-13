import 'dart:async';

import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class ProgressScreen extends StatefulWidget {
  @override
  _ProgressScreenState createState() => _ProgressScreenState();
}

class _ProgressScreenState extends State<ProgressScreen> with SingleTickerProviderStateMixin {
  double progress = 0;
  AnimationController controller;
  Animation<double> animation;

  void startTimer() {
    Timer.periodic(
      Duration(seconds: 1),
      (Timer timer) => updateProgress(timer),
    );
  }

  void updateProgress(Timer timer) {
    setState(
      () {
        if (progress >= 1) {
          timer.cancel();
          restartTimer();
        } else
          progress += 0.1;
      },
    );
  }

  void restartTimer() {
    setState(() {
      progress = 0;
    });
    startTimer();
  }

  @override
  void initState() {
    super.initState();
    startTimer();

    controller = AnimationController(duration: const Duration(milliseconds: 5000), vsync: this);
    animation = Tween(begin: 0.0, end: 1.0).animate(controller)
      ..addListener(() {
        setState(() {
          // the state that has changed here is the animation object’s value
        });
      });
    controller.repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.PROGRESS),
      ),
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text("Circular Progress"),
            Padding(
              padding: EdgeInsets.only(top: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircularProgressIndicator(),
                  CircularProgressIndicator(
                    value: progress,
                    backgroundColor: Colors.black12,
                  ),
                  CircularProgressIndicator(
                    value: controller.value ?? 0.0,
                    backgroundColor: Colors.black12,
                  ),
                ],
              ),
            ),
            SizedBox(height: 16.0),
            Text("Linear Progress:"),
            Padding(
              padding: EdgeInsets.only(top: 36.0, left: 24.0, right: 24.0),
              child: LinearProgressIndicator(
                backgroundColor: Colors.black12,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 36.0, left: 24.0, right: 24.0),
              child: LinearProgressIndicator(
                value: progress,
                backgroundColor: Colors.black12,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 36.0, left: 24.0, right: 24.0),
              child: LinearProgressIndicator(
                value: controller.value ?? 0.0,
                backgroundColor: Colors.black12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
