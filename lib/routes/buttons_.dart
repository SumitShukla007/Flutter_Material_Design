import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class ButtonsScreen extends StatefulWidget {
  @override
  _ButtonsScreenState createState() => _ButtonsScreenState();
}

class _ButtonsScreenState extends State<ButtonsScreen> {
  List<bool> isBtnSelected;

  @override
  void initState() {
    super.initState();
    isBtnSelected = <bool>[false, false, false, false];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.BUTTONS),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Container(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Text("FLAT BUTTON"),
                  Divider(),

                  ///FlAT BUTTON
                  Wrap(
                    spacing: 4.0,
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.start,
                    children: <Widget>[
                      FlatButton(
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                        splashColor: Colors.deepOrangeAccent,
                        onPressed: () {},
                        child: Text(
                          "Button",
                        ),
                      ),
                      FlatButton.icon(
                        textTheme: ButtonTextTheme.primary,
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                        icon: Icon(Icons.add),
                        label: Text(
                          "Button",
                        ),
                        onPressed: () {},
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: BorderSide(color: Theme.of(context).accentColor)),
                        color: Colors.white,
                        textColor: Theme.of(context).accentColor,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {},
                        child: Text(
                          "Button".toUpperCase(),
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                        padding: EdgeInsets.all(8.0),
                        onPressed: () {},
                        child: Text(
                          "Button".toUpperCase(),
                          style: TextStyle(
                            fontSize: 14.0,
                          ),
                        ),
                      ),
                      FlatButton(
                        onPressed: () {},
                        colorBrightness: Brightness.dark,
                        color: Theme.of(context).accentColor,
                        splashColor: Colors.green,
                        highlightColor: Colors.red,
                        child: Text("Button"),
                        shape: RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.horizontal(left: Radius.circular(20.0), right: Radius.circular(1.0))),
                      ),
                    ],
                  ),
                  SizedBox(height: 8.0),

                  ///RAISED BUTTON
                  Align(
                    alignment: Alignment.topRight,
                    child: Text("RAISED BUTTON"),
                  ),
                  Divider(),
                  Wrap(
                    direction: Axis.horizontal,
                    alignment: WrapAlignment.end,
                    spacing: 4.0,
                    children: <Widget>[
                      RaisedButton(
                        elevation: 4.0,
                        highlightColor: Colors.red,
                        textColor: Colors.white,
                        splashColor: Colors.deepOrangeAccent,
                        color: Theme.of(context).accentColor,
                        child: Text('Button'),
                        onPressed: () {},
                      ),
                      RaisedButton.icon(
                        elevation: 4.0,
                        textColor: Colors.white,
                        icon: Icon(Icons.add, color: Colors.white),
                        splashColor: Colors.deepOrangeAccent,
                        color: Theme.of(context).accentColor,
                        label: Text('Button'),
                        onPressed: () {},
                      ),
                      RaisedButton(
                        elevation: 4.0,
                        color: Colors.white,
                        textColor: Theme.of(context).accentColor,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Theme.of(context).accentColor)),
                        onPressed: () {},
                        child: Text("Button"),
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16.0),
                            side: BorderSide(color: Theme.of(context).accentColor)),
                        onPressed: () {},
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                        child: Text("Button"),
                      ),
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(16.0),
                            ),
                            side: BorderSide(color: Theme.of(context).accentColor)),
                        onPressed: () {},
                        color: Theme.of(context).accentColor,
                        textColor: Colors.white,
                        child: Text("Button"),
                      ),
                    ],
                  ),

                  ///CONTAINER WIDGET
                  SizedBox(height: 8.0),
                  Text("CONTAINER"),
                  Divider(),
                  Wrap(
                    spacing: 4.0,
                    alignment: WrapAlignment.start,
                    direction: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.all(4.0),
                        padding: EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        width: 120.0,
                        child: Text(
                          "Button",
                          style: TextStyle(color: Colors.white),
                        ),
                        decoration: ShapeDecoration(
                          color: Theme.of(context).accentColor,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(4.0),
                        padding: EdgeInsets.all(8.0),
                        alignment: Alignment.center,
                        width: 120.0,
                        child: Text(
                          "Button",
                          style: TextStyle(color: Colors.white),
                        ),
                        decoration: ShapeDecoration(
                          color: Theme.of(context).accentColor,
                          shape: BeveledRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                            side: BorderSide(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text("MATERIAL BUTTON"),
                  Divider(),
                  Align(
                    alignment: Alignment.topLeft,
                    child: MaterialButton(
                      colorBrightness: Brightness.dark,
                      elevation: 4.0,
                      splashColor: Theme.of(context).primaryColor.withOpacity(0.05),
                      highlightElevation: 5.0,
                      color: Theme.of(context).accentColor,
                      padding: EdgeInsets.all(8.0),
                      textTheme: ButtonTextTheme.primary,
                      child: Text("Button"),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(height: 16.0),

                  ///Outlined Box
                  Text("Outlined BUTTON"),
                  Divider(),
                  Wrap(
                    alignment: WrapAlignment.center,
                    children: <Widget>[
                      OutlineButton(
                        child: Text("Button"),
                        highlightedBorderColor: Theme.of(context).accentColor,
                        onPressed: () {},
                      ),
                      SizedBox(height: 16.0),
                      OutlineButton.icon(
                        icon: Icon(Icons.add),
                        label: Text("Button"),
                        highlightedBorderColor: Theme.of(context).accentColor,
                        onPressed: () {},
                      ),
                      SizedBox(height: 16.0),
                      OutlineButton(
                        onPressed: () {},
                        borderSide: BorderSide(
                          width: 5.0,
                          color: Colors.deepOrangeAccent,
                        ),
                        color: Colors.deepOrangeAccent,
                        highlightedBorderColor: Theme.of(context).accentColor,
                        splashColor: Colors.green,
                        //highlightColor: Colors.red,
                        child: Text("Button"),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(
                          Radius.circular(4.0),
                        )),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),

                  ///Toggle Buttons,
                  Text("Toggle Button"),
                  Divider(),
                  Center(
                    child: ToggleButtons(
                      selectedColor: Colors.deepOrangeAccent,
                      hoverColor: Theme.of(context).accentColor,
                      onPressed: (int position) {
                        setState(() {
                          isBtnSelected[position] = !isBtnSelected[position];
                        });
                      },
                      children: <Widget>[
                        Icon(Icons.search),
                        Icon(Icons.arrow_back),
                        Icon(Icons.bookmark_border),
                        Icon(Icons.favorite_border),
                      ],
                      isSelected: isBtnSelected,
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Text("Fab"),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      FloatingActionButton(
                        heroTag: null,
                        mini: true,
                        backgroundColor: Theme.of(context).accentColor,
                        child: Icon(Icons.mic, color: Colors.white),
                        onPressed: () {},
                      ),
                      FloatingActionButton(
                        heroTag: null,
                        tooltip: "Fab",
                        backgroundColor: Theme.of(context).accentColor,
                        child: Icon(Icons.add, color: Colors.white),
                        onPressed: () {},
                      ),
                      FloatingActionButton.extended(
                        heroTag: null,
                        tooltip: "Extended Fab",
                        backgroundColor: Theme.of(context).accentColor,
                        onPressed: () {},
                        icon: Icon(Icons.add, color: Colors.white),
                        label: Text(
                          "Hello",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 16.0),
                  Text("Icon Button"),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        color: Theme.of(context).accentColor,
                        splashColor: Colors.yellow,
                        // highlightColor: Colors.red,
                        icon: Icon(
                          Icons.share,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        color: Theme.of(context).accentColor,
                        splashColor: Colors.yellow,
                        // highlightColor: Colors.red,
                        icon: Icon(
                          Icons.bookmark_border,
                        ),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
