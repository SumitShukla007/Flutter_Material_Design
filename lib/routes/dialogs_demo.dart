import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

import 'fullscreen_dialog.dart';

class DialogsScreen extends StatefulWidget {
  @override
  _DialogsScreenState createState() => _DialogsScreenState();
}

class _DialogsScreenState extends State<DialogsScreen> {
  ///IMPLEMENT RADIO,CHECKBOX,TIMEPICKER,DATEPICKER,CUSTOM,FULLSCREEN INSIDE DIALOG

  var radioVal = ["One", "Two", "Three", "Four"];
  var _rdVal = "";
  var checkVal = [false, false, false, false];

  okButton() {
    return FlatButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Ok"),
    );
  }

  cancelButton() {
    return FlatButton(
      onPressed: () {
        Navigator.pop(context);
      },
      child: Text("Cancel"),
    );
  }

  updateRadioDialog(String value) {
    debugPrint("Value is $value");
    _rdVal = value;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(Constants.DIALOGS)),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  onPressed: () {
                    simpleDialog(context);
                  },
                  child: Text("Simple Dialog".toUpperCase()),
                ),
                SizedBox(height: 16.0),
                ///CONFIRM DIALOG
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  onPressed: () {
                    confirmDialog(context);
                  },
                  child: Text(
                    "Confirm Dialog".toUpperCase(),
                  ),
                ),
                SizedBox(height: 16.0),
                ///TEXTFIELD DIALOG
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  onPressed: () {
                    dialogWithField(context);
                  },
                  child: Text(
                    "TextField Dialog".toUpperCase(),
                  ),
                ),

                SizedBox(height: 16.0),
                //SELECT OPTIONS DIALOG
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  onPressed: () {
                    singleOptionsDialog(context);
                  },
                  child: Text(
                    "Options Dialog".toUpperCase(),
                  ),
                ),

                SizedBox(height: 16.0),
                ///SINGLE SELECTION DIALOG
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  child: Text(
                    "Single Selection Dialog".toUpperCase(),
                  ),
                  onPressed: () {
                    singleSelectionDialog(context);
                  },
                ),

                SizedBox(height: 16.0),
                ///MULTI-SELECTION DIALOG
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  child: Text(
                    "Multi Selection Dialog".toUpperCase(),
                  ),
                  onPressed: () {
                    multiSelectionDialog(context);
                  },
                ),

                SizedBox(height: 16.0),
                ///FULLSCREEN DIALOG
                RaisedButton(
                  color: Theme.of(context).accentColor,
                  textColor: Colors.white,
                  child: Text(
                    "Fullscreen Dialog".toUpperCase(),
                  ),
                  onPressed: () {
                    Navigator.of(context).push(
                      new MaterialPageRoute<Null>(
                        builder: (BuildContext context) {
                          return FullScreen();
                        },
                        fullscreenDialog: true,
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void multiSelectionDialog(BuildContext context) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Checkbox Dialog"),
          content: StatefulBuilder(
            builder: (context, setState) {
              return Padding(
                padding: EdgeInsets.all(0.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: List<Widget>.generate(4, (int index) {
                    return CheckboxListTile(
                      title: Text("Value ${index + 1}"),
                      controlAffinity: ListTileControlAffinity.leading,
                      onChanged: (bool value) {
                        setState(() {
                          checkVal[index] = value;
                        });
                      },
                      value: checkVal[index],
                    );
                  }),
                ),
              );
            },
          ),
          actions: <Widget>[cancelButton(), okButton()],
        );
      },
    );

  }

  void singleSelectionDialog(BuildContext context) {

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Radio Dialog"),
          actions: <Widget>[cancelButton(), okButton()],
          content: StatefulBuilder(
            builder: (BuildContext context, void Function(void Function()) setState) {
              return Column(
                mainAxisSize: MainAxisSize.min,
                children: List<Widget>.generate(4, (int index) {
                  return RadioListTile(
                    activeColor: Theme.of(context).accentColor,
                    selected: false,
                    groupValue: _rdVal,
                    value: radioVal[index],
                    title: Text(radioVal[index]),
                    onChanged: (String value) {
                      setState(() {
                        _rdVal = value;
                      });
                    },
                  );
                }),
              );
            },
          ),
        );
      },
    );

  }

  void confirmDialog(BuildContext context) {

    showDialog(
      context: context,
      child: AlertDialog(
        title: Text('Enable GPS for this app.'),
        content: Text('Do you want to enable GPS service for this app?'),
        actions: <Widget>[
          cancelButton(),
          okButton(),
        ],
      ),
    );

  }

  void dialogWithField(BuildContext context) {

    showDialog(
      context: context,
      child: AlertDialog(
        title: Text(
          'This is a title',
        ),
        content: TextField(
          decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: "Your name here",
          ),
        ),
        actions: <Widget>[
          cancelButton(),
          okButton(),
        ],
      ),
    );

  }

  void singleOptionsDialog(BuildContext context) {

    showDialog(
      context: context,
      child: SimpleDialog(
        title: Text(
          "Choose Options",
        ),
        children: <Widget>[
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, "First");
            },
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('First'),
            ),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, "Second");
            },
            child: Padding(padding: EdgeInsets.all(8.0), child: Text('Second')),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, "Third");
            },
            child: Padding(padding: EdgeInsets.all(8.0), child: Text('Third')),
          ),
          SimpleDialogOption(
            onPressed: () {
              Navigator.pop(context, "Fourth");
            },
            child: Padding(padding: EdgeInsets.all(8.0), child: Text('Fourth')),
          ),
        ],
      ),
    );

  }

  simpleDialog(BuildContext context) {
    showDialog(
      context: context,
      child: AlertDialog(
        content: Text("This is dialog!"),
        actions: <Widget>[
          okButton(),
        ],
      ),
    );
  }
}
