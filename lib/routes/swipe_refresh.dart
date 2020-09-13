import 'package:flutter/material.dart';
import 'package:materialdesignflutter/models/country.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class SwipeRefreshScreen extends StatefulWidget {
  @override
  _SwipeRefreshScreenState createState() => _SwipeRefreshScreenState();
}

class _SwipeRefreshScreenState extends State<SwipeRefreshScreen> {
  var swipeList = List<Country>();
  var refreshKey = GlobalKey<RefreshIndicatorState>();

  @override
  void initState() {
    super.initState();
    swipeList.addAll(Country.getCountries());
  }

  Future<Null> _refreshList() async {
    await Future.delayed(Duration(seconds: 2));
    refreshKey.currentState?.show(atTop: false);

    setState(() {
      swipeList = swipeList..shuffle();
    });
    return Null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.SWIPE_REFRESH),
      ),
      body: RefreshIndicator(
        color: Theme.of(context).primaryColor,
        key: refreshKey,
        onRefresh: _refreshList,
        child: ListView.separated(
          itemCount: swipeList.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
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
      ),
    );
  }
}
