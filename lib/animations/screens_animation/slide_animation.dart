import 'package:flutter/material.dart';
import 'package:materialdesignflutter/models/curve_type.dart';

import 'anim_list.dart';
import 'data_page.dart';

class SlideAnim extends StatelessWidget {
  List<CurveType> curveList = AnimList.getCurveList();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Slide Animation"),
      ),
      body: ListView.builder(
          itemCount: curveList.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(curveList[index].curveName),
                leading: CircleAvatar(
                  child: Text("${index + 1}"),
                  backgroundColor: Colors.white,
                ),
                onTap: () {
                  Navigator.of(context).push(
                    PageRouteBuilder(
                      pageBuilder: (context, animation, anotherAnimation) {
                        return AnimResultPage();
                      },
                      transitionDuration: Duration(milliseconds: 1000),
                      transitionsBuilder: (context, animation, anotherAnimation, child) {
                        animation = CurvedAnimation(curve: curveList[index].curveType, parent: animation);
                        return SlideTransition(
                          position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0)).animate(animation),
                          child: child,
                        );
                      },
                    ),
                  );
                },
              ),
            );
          }),
    );
  }
}
