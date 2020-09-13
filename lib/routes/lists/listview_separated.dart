import 'package:flutter/material.dart';
import 'package:materialdesignflutter/models/country.dart';

class ListSeparated extends StatefulWidget {
  @override
  _ListSeparatedState createState() => _ListSeparatedState();
}

class _ListSeparatedState extends State<ListSeparated> {
  var swipeList = List<Country>();

  @override
  void initState() {
    super.initState();
    swipeList.addAll(Country.getCountries());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Separated list"),
      ),
      body: SafeArea(
        child: ListView.separated(
          itemCount: Country.getCountries().length,
          itemBuilder: (context, index) {
            return listItem(index);
          },
          separatorBuilder: (context, index) => separatorItem(index),
        ),
      ),
    );
  }

  listItem(int index) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              "${swipeList[index].name}",
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text("${swipeList[index].capital}"),
          ],
        ),
      ),
    );
  }

  separatorItem(int index) {
    return Container(
      child: Card(
          color: Colors.green,
          child: Padding(
            padding: const EdgeInsets.all(2.0),
            child: Text(
              "Separate line ${index + 1}",
              style: TextStyle(color: Colors.white),
            ),
          )),
    );
  }
}
