import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

enum numbers { One, Two, Three, Four }

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  List<numbers> _checkedValues;
  var contextVal = "";
  var sectionedVal = "";
  var dropDownVal = "One";

  @override
  void initState() {
    super.initState();
    _checkedValues = [numbers.One];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.MENUS),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              setContextMenu(context),
              Divider(),
              setSectionedMenu(context),
              Divider(),
              dropDownMenu(context),
              Divider(),
              checkListMenu(context),
            ],
          ),
        ),
      ),
    );
  }

  setContextMenu(BuildContext context) {
    return ListTile(
      title: Text("Context Menu: $contextVal"),
      trailing: PopupMenuButton<String>(
        onSelected: (String value) {
          setState(() {
            contextVal = value;
          });
        },
        itemBuilder: (context) => <PopupMenuItem<String>>[
          PopupMenuItem<String>(value: "One", child: Text("One")),
          PopupMenuItem<String>(enabled: false, value: "Two", child: Text("Two")),
          PopupMenuItem<String>(value: "Three", child: Text("Three")),
        ],
      ),
    );
  }

  setSectionedMenu(BuildContext context) {
    return ListTile(
      title: Text("Sectioned Menu: $sectionedVal"),
      trailing: PopupMenuButton<String>(
        padding: EdgeInsets.zero,
        onSelected: (String value) {
          setState(() {
            sectionedVal = value;
          });
        },
        itemBuilder: (context) => <PopupMenuEntry<String>>[
          PopupMenuItem<String>(
            value: "One",
            child: ListTile(
              leading: const Icon(Icons.visibility),
              title: Text("One"),
            ),
          ),
          const PopupMenuDivider(),
          PopupMenuItem<String>(
            value: "Two",
            child: ListTile(
              leading: const Icon(Icons.visibility),
              title: Text("Two"),
            ),
          ),
          const PopupMenuDivider(),
          PopupMenuItem<String>(
            value: "Three",
            child: ListTile(
              leading: const Icon(Icons.visibility),
              title: Text("Three"),
            ),
          ),
          const PopupMenuDivider(),
          PopupMenuItem<String>(
            value: "Four",
            child: ListTile(
              leading: const Icon(Icons.visibility),
              title: Text("Four"),
            ),
          ),
        ],
      ),
    );
  }

  dropDownMenu(BuildContext context) {
    return ListTile(
      title: Text("DropDown Menu: $dropDownVal"),
      trailing: DropdownButton<String>(
        onChanged: (String value) {
          setState(() {
            dropDownVal = value;
          });
        },
        value: dropDownVal,
        items: <DropdownMenuItem<String>>[
          DropdownMenuItem(
            value: "One",
            child: Text("One"),
          ),
          DropdownMenuItem(
            value: "Two",
            child: Text("Two"),
          ),
          DropdownMenuItem(
            value: "Three",
            child: Text("Three"),
          ),
        ],
      ),
    );
  }

  bool isChecked(numbers values) {
    debugPrint("${_checkedValues.contains(values)}");
    return _checkedValues.contains(values);
  }

  showCheckedMenuSelections(numbers value, BuildContext context) {
    debugPrint("showCheckedMenuSelections $value");
    if (_checkedValues.contains(value)) {
      setState(() {
        _checkedValues.remove(value);
      });
    } else {
      setState(() {
        _checkedValues.add(value);
      });
    }
  }

  getEnumValue(numbers num) =>
      {numbers.One: "One", numbers.Two: "Two", numbers.Three: "Three", numbers.Four: "Four"}[num];

  checkListMenu(BuildContext context) {
    return ListTile(
      title: Text("CheckList Menus"),
      trailing: PopupMenuButton<numbers>(
        padding: EdgeInsets.zero,
        onSelected: (value) {
          showCheckedMenuSelections(value, context);
          debugPrint("Value : $value");
        },
        itemBuilder: (context) => <PopupMenuItem<numbers>>[
          CheckedPopupMenuItem(
            checked: isChecked(numbers.One),
            value: numbers.One,
            child: Text(getEnumValue(numbers.One)),
          ),
          CheckedPopupMenuItem(
            checked: isChecked(numbers.Two),
            value: numbers.Two,
            child: Text(getEnumValue(numbers.Two)),
          ),
          CheckedPopupMenuItem(
            checked: isChecked(numbers.Three),
            value: numbers.Three,
            child: Text(getEnumValue(numbers.Three)),
          ),
          CheckedPopupMenuItem(
            checked: isChecked(numbers.Four),
            value: numbers.Four,
            child: Text(getEnumValue(numbers.Four)),
          ),
        ],
      ),
    );
  }
}
