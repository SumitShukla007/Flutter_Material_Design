import 'package:flutter/material.dart';

import 'fade_animation.dart';
import 'rotate_anim.dart';
import 'scale_animation.dart';
import 'size_animation.dart';
import 'slide_animation.dart';

class AnimScreenType extends StatelessWidget {
  List<String> listData = ["Fade Screen", "Rotate Screen", "Scale Screen", "Size Screen", "Slide Screen"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animations"),
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: listData.length,
          itemBuilder: (context, position) {
            return Column(
              children: <Widget>[
                InkWell(
                  splashColor: Colors.black12,
                  onTap: () {
                    navigateToScreen(context, position);
                  },
                  child: ListTile(
                    title: Text("${listData[position]}"),
                  ),
                ),
                Divider(height: 1)
              ],
            );
          },
        ),
      ),
    );
  }

  navigateToScreen(context, index) {
    var currentScreen;

    switch (index) {
      case 0:
        currentScreen = FadeAnim();
        break;
      case 1:
        currentScreen = RotateAnim();
        break;
      case 2:
        currentScreen = ScaleAnim();
        break;
      case 3:
        currentScreen = SizeAnim();
        break;
      case 4:
        currentScreen = SlideAnim();
        break;
    }

    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, anotherAnimation) {
          return currentScreen;
        },
        transitionDuration: Duration(milliseconds: 1000),
        transitionsBuilder: (context, animation, anotherAnimation, child) {
          animation = CurvedAnimation(curve: Curves.linear, parent: animation);
          return SlideTransition(
            position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0)).animate(animation),
            child: child,
          );
        },
      ),
    );
  }
}
