import 'package:flutter/material.dart';

class GridListScreen extends StatefulWidget {
  @override
  _GridListScreenState createState() => _GridListScreenState();
}

enum LIST_TYPE { VERTICAL_LIST, GRID_LIST }

var title = "Vertical";
var _listType = LIST_TYPE.VERTICAL_LIST;

class _GridListScreenState extends State<GridListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          getPopUpItem(),
        ],
      ),
      body: getListType(),
    );
  }

  getPopUpItem() {
    return PopupMenuButton<LIST_TYPE>(
      onSelected: (LIST_TYPE value) {
        setState(() {
          _listType = value;
          getTitle();
        });
      },
      itemBuilder: (BuildContext context) => <PopupMenuItem<LIST_TYPE>>[
        PopupMenuItem<LIST_TYPE>(
          value: LIST_TYPE.VERTICAL_LIST,
          child: Text('Vertical'),
        ),
        PopupMenuItem<LIST_TYPE>(
          value: LIST_TYPE.GRID_LIST,
          child: Text('Grid'),
        )
      ],
    );
  }

  getListType() {
    switch (_listType) {
      case LIST_TYPE.VERTICAL_LIST:
        return getListView();
      case LIST_TYPE.GRID_LIST:
        return getGridView();
    }
  }

  getTitle() {
    switch (_listType) {
      case LIST_TYPE.VERTICAL_LIST:
        title = "Vertical";
        break;
      case LIST_TYPE.GRID_LIST:
        title = "Grid";
        break;
    }
  }

  getListView() {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          child: ListTile(
            title: Text("Data ${index + 1}"),
            onTap: () => {},
          ),
        );
      },
    );
  }

  getGridView() {
    return GridView.builder(
      itemCount: 10,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (BuildContext context, int index) {
        return GridTile(
          child: Card(
            elevation: 4.0,
            child: Container(
              alignment: Alignment.center,
              child: Text("Data ${index + 1}"),
            ),
          ),
        );
      },
    );
  }
}
