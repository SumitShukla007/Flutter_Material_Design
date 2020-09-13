import 'package:flutter/material.dart';

enum PickersDemo { date, time }

class PickersScreen extends StatefulWidget {
  @override
  _PickersScreenState createState() => _PickersScreenState();
}

class _PickersScreenState extends State<PickersScreen> {
  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();

  DateTime _initDate = DateTime.now();
  TimeOfDay _initTime = TimeOfDay.fromDateTime(DateTime.now());

  _showSnackBar(String data) {
    var snackBar = SnackBar(
      duration: Duration(seconds: 2),
      content: Text(data),
    );
    _scaffoldkey.currentState.showSnackBar(snackBar);
  }

  Future<void> _showDatePicker() async {
    DateTime dateTime = await showDatePicker(
      context: context,
      initialDate: _initDate,
      firstDate: DateTime(2015, 1),
      lastDate: DateTime(2100),
    );

    if (dateTime != null) _showSnackBar("${dateTime.toLocal()}".split(' ')[0]);
  }

  Future<void> _showTimePicker() async {
    TimeOfDay showTime = await showTimePicker(
      context: context,
      initialTime: _initTime,
      builder: (BuildContext context, Widget child) {
        return MediaQuery(
          data: MediaQuery.of(context).copyWith(alwaysUse24HourFormat: false), //For 24 hrs set it to true
          child: child,
        );
      },
    );

    String formattedTime = MaterialLocalizations.of(context).formatTimeOfDay(showTime, alwaysUse24HourFormat: false);

    if (formattedTime != null) _showSnackBar("$formattedTime");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      appBar: AppBar(
        title: Text("Pickers"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            RaisedButton(
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: () {
                _showDatePicker();
              },
              child: Text("DATE PICKER"),
            ),
            RaisedButton(
              color: Theme.of(context).accentColor,
              textColor: Colors.white,
              onPressed: () {
                _showTimePicker();
              },
              child: Text("TIME PICKER"),
            ),
          ],
        ),
      ),
    );
  }
}
