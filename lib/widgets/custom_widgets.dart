import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextWidget(BuildContext context, String text) {
  return Text(
    text,
    style: TextStyle(fontSize: 15.0, color: Theme.of(context).primaryColor),
  );
}

CustomSizeBox(BuildContext context,
    {double userHeight = 16.0, double userWidth = 16.0, bool isHeight = false, bool isWidth = false}) {
//  debugPrint("Width: $userWidth & Height: $userHeight");
  return SizedBox(
    height: isHeight == true ? userHeight : 0,
    width: isWidth == true ? userWidth : 0,
  );
}

DividerWidget() {
  return Divider(
    color: Colors.black,
  );
}
