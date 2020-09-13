import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class BtmAppBar extends StatefulWidget {
  @override
  _BtmAppBarState createState() => _BtmAppBarState();
}

class _BtmAppBarState extends State<BtmAppBar> {
  bool _btmNotch = true;
  bool _fabMini = false;
  FloatingActionButtonLocation fabLocation;
  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    fabLocation = FloatingActionButtonLocation.centerDocked;
  }

  _showSnackBar(msg) {
    //DURATION IS NOT COMPULSORY!
    var snackBar = SnackBar(
      duration: Duration(seconds: 2),
      content: Text(msg),
    );
    _scaffoldkey.currentState.showSnackBar(snackBar);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text(Constants.BOTTOM_APPBAR),
      ),
      floatingActionButton: FloatingActionButton(
        tooltip: "Fab",
        mini: _fabMini,
        backgroundColor: Colors.purple,
        child: Icon(Icons.add, color: Colors.white),
        elevation: 2.0,
        onPressed: () => _showSnackBar("FAB Clicked!"),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          SwitchListTile(
            value: _fabMini,
            title: Text("Mini FAB"),
            onChanged: (bool value) {
              setState(() {
                _fabMini = value;
              });
            },
          ),
          SwitchListTile(
            value: _btmNotch,
            title: Text("Notch"),
            onChanged: (bool value) {
              setState(() {
                _btmNotch = value;
              });
            },
          ),
          Divider(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text("Fab Alignment"),
              getDropDown(),
            ],
          )
        ],
      ),
      floatingActionButtonLocation: fabLocation,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            IconButton(
              onPressed: () => _showSnackBar("Menu Clicked!"),
              icon: Icon(
                Icons.menu,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () => _showSnackBar("Home Clicked!"),
              icon: Icon(
                Icons.home,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () => _showSnackBar("Notifications Clicked!"),
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
            ),
          ],
        ),
        shape: _btmNotch ? CircularNotchedRectangle() : null,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  getDropDown() {
    return DropdownButton<FloatingActionButtonLocation>(
      onChanged: (FloatingActionButtonLocation value) {
        setState(() {
          fabLocation = value;
        });
      },
      value: fabLocation,
      items: <DropdownMenuItem<FloatingActionButtonLocation>>[
        DropdownMenuItem(
          value: FloatingActionButtonLocation.centerDocked,
          child: Text("Center Docked"),
        ),
        DropdownMenuItem(
          value: FloatingActionButtonLocation.centerFloat,
          child: Text("Center Float"),
        ),
        DropdownMenuItem(
          value: FloatingActionButtonLocation.endDocked,
          child: Text("End Docked"),
        ),
        DropdownMenuItem(
          value: FloatingActionButtonLocation.endTop,
          child: Text("End Top"),
        ),
        DropdownMenuItem(
          value: FloatingActionButtonLocation.startTop,
          child: Text("Start Top"),
        ),
        DropdownMenuItem(
          value: FloatingActionButtonLocation.miniStartTop,
          child: Text("Mini Start Top"),
        ),
      ],
    );
  }
}
