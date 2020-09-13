import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class SelectionControlsScreen extends StatefulWidget {
  @override
  _SelectionControlsScreenState createState() => _SelectionControlsScreenState();
}

class _SelectionControlsScreenState extends State<SelectionControlsScreen> {
  bool _switchVal = false;
  String _radioValue = "";
  String _radioGenderValue = "";
  bool cbBox1 = false;
  bool cbBox2 = false;
  bool sTile1 = false;
  bool sTile2 = false;
  var textStyle;

  void radioBtnChanges(String value) {
    _radioValue = value;
  }

  @override
  Widget build(BuildContext context) {
    textStyle = Theme.of(context).textTheme.subtitle2.copyWith(color: Theme.of(context).primaryColor);
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.SELECTION_CONTROLS),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "Switch $_switchVal",
              style: textStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Switch:"),
                Switch(
                  activeColor: Colors.greenAccent,
                  activeTrackColor: Colors.blue,
                  value: _switchVal,
                  onChanged: (bool value) {
                    setState(() {
                      _switchVal = value;
                    });
                  },
                ),
              ],
            ),
            SwitchListTile(
              title: Text("Switch Tile 1"),
              value: sTile1,
              onChanged: (bool value) {
                setState(() {
                  sTile1 = !sTile1;
                });
              },
            ),
            SwitchListTile(
              title: Text("Switch Tile 2"),
              value: sTile2,
              onChanged: (bool value) {
                setState(() {
                  sTile2 = !sTile2;
                });
              },
            ),
            Divider(),

            ///WHEN GROUP VALUE IS EQUAL TO VALUE IN RADIO THEN IT IS CHECKED.
            Text(
              "Radio $_radioValue",
              style: textStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio(
                      groupValue: _radioValue,
                      onChanged: updateRadioValue,
                      value: "One",
                    ),
                    Text("One"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      groupValue: _radioValue,
                      onChanged: updateRadioValue,
                      value: "Two",
                    ),
                    Text("Two"),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      groupValue: _radioValue,
                      onChanged: (String value) {
                        updateRadioValue(value);
                      },
                      value: "Three",
                    ),
                    Text("Three"),
                  ],
                ),
              ],
            ),
            Divider(),
            Text(
              "Radio List Tile",
              style: textStyle,
            ),
            RadioListTile(
              activeColor: Theme.of(context).accentColor,
              selected: false,
              groupValue: _radioGenderValue,
              value: "Male",
              title: Text("Male"),
              subtitle: Text("Hello there"),
              onChanged: (value) {
                updateGenderValue(value);
              },
            ),
            RadioListTile(
              activeColor: Theme.of(context).accentColor,
              selected: false,
              groupValue: _radioGenderValue,
              value: "Female",
              title: Text("Female"),
              subtitle: Text("Hello there"),
              onChanged: (value) {
                updateGenderValue(value);
              },
            ),
            Divider(),
            Text(
              "Checkbox",
              style: textStyle,
            ),
//              Row(
//                children: <Widget>[
//                  Checkbox(
//                    value: true,
//                    onChanged: (bool value) {},
//                  ),
//                  Text("Hello"),
//                ],
//              ),
//              Text("Hello"),
            CheckboxListTile(
              title: Text("Hello"),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {
                setState(() {
                  cbBox1 = value;
                });
              },
              value: cbBox1,
            ),
            CheckboxListTile(
              title: Text("World"),
              controlAffinity: ListTileControlAffinity.leading,
              onChanged: (bool value) {
                setState(() {
                  cbBox2 = value;
                });
              },
              value: cbBox2,
            ),
            Divider(),
            Text(
              "Expansion Tile",
              style: textStyle,
            ),
            ExpansionTile(
              backgroundColor: Theme.of(context).accentColor.withOpacity(0.025),
              title: Text("List Expand"),
              subtitle: Text("Open list data"),
              children: const <Widget>[
                ListTile(title: const Text('Item 1')),
                ListTile(title: const Text('Item 2')),
                ListTile(title: const Text('Item 3')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void updateRadioValue(String value) {
    setState(() {
      _radioValue = value;
    });
  }

  void updateGenderValue(String value) {
    setState(() {
      _radioGenderValue = value;
    });
  }
}
