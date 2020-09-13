import 'package:flutter/material.dart';
import 'package:materialdesignflutter/models/country.dart';

class SwipeableList extends StatefulWidget {
  @override
  _SwipeableListState createState() => _SwipeableListState();
}

var swipeList = List<Country>();
var removedData;

class _SwipeableListState extends State<SwipeableList> {

  @override
  void initState() {
    super.initState();
    swipeList.addAll(Country.getCountries());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Swipeable List")),
      body: ListView.separated(
        itemCount: swipeList.length,
        itemBuilder: (BuildContext context, int index) {
          return Dismissible(
            onDismissed: (direction) {
              debugPrint("Direction is: $direction");
              setState(
                () {
                  removedData = swipeList[index];
                  debugPrint("removed Data: $removedData");
                  swipeList.removeAt(index);
                  Scaffold.of(context).showSnackBar(
                    SnackBar(
                      duration: Duration(seconds: 5),
                      content: Text("${swipeList[index].name} dismissed!"),
                      action: SnackBarAction(
                        label: "UNDO",
                        onPressed: () {
                          debugPrint("UNDO Pressed");
                          _addItem(index, removedData);
                        },
                      ),
                    ),
                  );
                },
              );
            },
            key: Key(swipeList[index].name),
            background: new Container(
              color: Colors.red,
              child: const ListTile(leading: const Icon(Icons.delete, color: Colors.white)),
            ),
            secondaryBackground: new Container(
              color: Colors.orange,
              child: const ListTile(trailing: const Icon(Icons.archive, color: Colors.white)),
            ),
            child: ListTile(
              leading: Image(
                image: AssetImage("${swipeList[index].flag}"),
                width: 50.0,
                height: 50.0,
              ),
              title: Text("${swipeList[index].name}"),
              subtitle: Text("${swipeList[index].capital}"),
            ),
          );
        },
        separatorBuilder: (BuildContext context, int index) => Divider(
          height: 0,
        ),
      ),
    );
  }

  _addItem(int index, Country removedData) {
    setState(() {
      swipeList.insert(index, removedData);
    });
  }
}
