import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

enum MENU { ACTION1, ACTION2 }

class AppBarExample extends StatefulWidget {
  @override
  _AppBarExampleState createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldkey,
        appBar: AppBar(
          title: Text(Constants.APPBAR),
          actions: <Widget>[
            FlatButton(
              textColor: Colors.white,
              onPressed: () => _showSnackBar("Save Clicked!"),
              child: Text("Save",style: TextStyle(fontSize: 16.0),),
              shape: CircleBorder(side: BorderSide(color: Colors.transparent)),
            ),
            GestureDetector(
              child: Icon(Icons.search),
              onTap: () => _showSnackBar("Search Clicked!"),
            ),
            PopupMenuButton<MENU>(
              onSelected: (MENU value) {
                setState(() {
                  if (value == MENU.ACTION1)
                    _showSnackBar("Action 1");
                  else
                    _showSnackBar("Action 2");
                });
              },
              itemBuilder: (BuildContext context) => <PopupMenuItem<MENU>>[
                PopupMenuItem<MENU>(
                  value: MENU.ACTION1,
                  child: Text('Action 1'),
                ),
                PopupMenuItem<MENU>(
                  value: MENU.ACTION2,
                  child: Text('Action 2'),
                )
              ],
            ),
          ],
        ),
        body: Center(child: Text("App Bar")));
  }

  _showSnackBar(String value) {
    var snackBar = SnackBar(
      duration: Duration(seconds: 2),
      content: Text(value.toString()),
    );
    _scaffoldkey.currentState.showSnackBar(snackBar);
  }
}
