import 'package:flutter/material.dart';
import 'package:materialdesignflutter/models/curve_type.dart';

import 'anim_list.dart';
import 'data_page.dart';

class SizeAnim extends StatelessWidget {
  List<CurveType> curveList = AnimList.getCurveList();

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Size Animation"),
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
                      transitionDuration: Duration(milliseconds: 2000),
                      transitionsBuilder: (context, animation, anotherAnimation, child) {
                        animation = CurvedAnimation(curve: curveList[index].curveType, parent: animation);
                        return Align(
                          child: SizeTransition(
                            sizeFactor: animation,
                            child: child,
                            axisAlignment: 0.0,
                          ),
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
