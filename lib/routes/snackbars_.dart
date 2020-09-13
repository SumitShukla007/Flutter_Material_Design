import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SnackbarsScreen extends StatelessWidget {

  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  _showSnackBar() {
    //DURATION IS NOT COMPULSORY!
    var snackBar = SnackBar(
      duration: Duration(seconds: 2),
      content: Text("A Simple Snackbar"),
    );
    _scaffoldkey.currentState.showSnackBar(snackBar);
  }

  _showActionSnackBar() {
    var snackBar = SnackBar(
      duration: Duration(seconds: 2),
      content: Text('A Simple Snackbar!'),
      action: SnackBarAction(label: "UNDO", onPressed: hideSnackbar),
    );
    _scaffoldkey.currentState.showSnackBar(snackBar);
  }

  _showCustomSnackBar() {
    var snackBar = SnackBar(
      duration: Duration(seconds: 2),
      content: Text(
        'Custom Color Snackbar!',
        style: TextStyle(color: Colors.red),
      ),
      action: SnackBarAction(
        textColor: Colors.yellow,
        label: "UNDO",
        onPressed: hideSnackbar,
      ),
    );
    _scaffoldkey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Snackbar"),
      ),
      key: _scaffoldkey,
      //When the Scaffold is actually created in the same build function, the context argument to the build function can't be used to find the Scaffold (since it's "above" the widget being returned).
      // In such cases, the following technique is used to provide a new scope with a BuildContext that is "under" the Scaffold:
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RaisedButton(
                color: Theme.of(context).accentColor,
                onPressed: _showSnackBar,
                child: Text(
                  'Show SnackBar',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                color: Theme.of(context).accentColor,
                onPressed: _showActionSnackBar,
                child: Text(
                  'SnackBar with Action',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              RaisedButton(
                color: Theme.of(context).accentColor,
                onPressed: _showCustomSnackBar,
                child: Text(
                  'SnackBar with Custom Colors',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void hideSnackbar() {
    _scaffoldkey.currentState.hideCurrentSnackBar();
  }
}

class SnackBarPage extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  final snackBar = SnackBar(content: Text('A Simple Snackbar!'));

  final actionSnackbar = SnackBar(
    action: SnackBarAction(
      label: "UNDO",
      onPressed: () {},
    ),
    content: Text('SnackBar with Action!'),
  );

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          RaisedButton(
            color: Colors.purple,
            onPressed: () {
              Scaffold.of(context).showSnackBar(snackBar);
            },
            child: Text(
              'Show SnackBar',
              style: TextStyle(color: Colors.white),
            ),
          ),
          RaisedButton(
            color: Colors.purple,
            onPressed: () {
              Scaffold.of(context).showSnackBar(actionSnackbar);
            },
            child: Text(
              'SnackBar with action',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
