import 'package:flutter/material.dart';

import '../grid_list.dart';
import 'animated_list.dart';
import 'listview_builder.dart';
import 'listview_scroll_physics.dart';
import 'listview_separated.dart';
import 'normal_list.dart';

class ListTypeScreen extends StatelessWidget {
  List<String> listData = ["Animated", "Scroll Physics", "Separated",
    "Builder", "Normal", "Vertical & Grid"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Types"),
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
        currentScreen = AnimatedListExample();
        break;
      case 1:
        currentScreen = ListScrollPhysics();
        break;
      case 2:
        currentScreen = ListSeparated();
        break;
      case 3:
        currentScreen = ListBuilder();
        break;
      case 4:
        currentScreen = NormalList();
        break;
      case 5:
        currentScreen = GridListScreen();
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
