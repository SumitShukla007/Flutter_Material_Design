import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:materialdesignflutter/models/country.dart';
import 'package:materialdesignflutter/utils/constants.dart';

GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
enum BOTTOM_SHEET_TYPE { Persistent, Modal }
var _bottomSheetType = BOTTOM_SHEET_TYPE.Persistent;
var swipeList = List<Country>();

class BottomSheetScreen extends StatefulWidget {
  @override
  _BottomSheetScreenState createState() => _BottomSheetScreenState();
}

class _BottomSheetScreenState extends State<BottomSheetScreen> {

  @override
  void initState() {
    super.initState();
    swipeList.addAll(Country.getCountries());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomSheet"),
        actions: <Widget>[
          PopupMenuButton<BOTTOM_SHEET_TYPE>(
            onSelected: (BOTTOM_SHEET_TYPE value) {
              setState(() {
                _bottomSheetType = value;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuItem<BOTTOM_SHEET_TYPE>>[
              PopupMenuItem<BOTTOM_SHEET_TYPE>(
                value: BOTTOM_SHEET_TYPE.Persistent,
                child: Text('Persistent'),
              ),
              PopupMenuItem<BOTTOM_SHEET_TYPE>(
                value: BOTTOM_SHEET_TYPE.Modal,
                child: Text('Modal'),
              )
            ],
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {},
      ),
      key: _scaffoldkey,
      body: ListView.separated(
        itemCount: swipeList.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            onTap: () => {
              Future.delayed(const Duration(milliseconds: 500), () {
                setState(() {
                  showSheet(index);
                });
              }),
            },
            leading: Image(
              image: AssetImage("${swipeList[index].flag}"),
              width: 50.0,
              height: 50.0,
            ),
            title: Text("${swipeList[index].name}"),
            subtitle: Text("${swipeList[index].capital}"),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 0,
        ),
      ),
    );
  }

  showSheet(index) {
    setState(() {
      if (_bottomSheetType == BOTTOM_SHEET_TYPE.Persistent) {
        _persistentBottomSheet(context, index);
      } else {
        _showModalBottomSheet(context, index);
      }
    });
  }
}

_persistentBottomSheet(context, index) {
  _scaffoldkey.currentState.showBottomSheet<void>((BuildContext context) {
    return sheetData(index, context);
  });
}

sheetData(index, BuildContext context) {
  return Container(
    decoration: BoxDecoration(
      color: Colors.grey[300],
      borderRadius: BorderRadius.vertical(top: Radius.circular(24.0)),
    ),
    child: SingleChildScrollView(
        child: Column(
      children: <Widget>[
        SizedBox(height: 8.0),
        ListTile(
          leading: Image.asset(
            swipeList[index].flag,
            width: 100.0,
            height: 100.0,
          ),
          title: Text(swipeList[index].name),
          subtitle: Text(swipeList[index].capital),
          onTap: () => Navigator.pop(context),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 24.0, top: 8.0, right: 24.0, bottom: 8.0),
          child: Text(Constants.SUBTITLE_LONG_TEXT),
        )
      ],
    )),
  );
}

_showModalBottomSheet(context, index) {
  showModalBottomSheet(
    elevation: 25,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        top: Radius.circular(25.0),
      ),
    ),
    context: context,
    builder: (BuildContext bc) {
      return sheetData(index, context);
    },
  );
}
