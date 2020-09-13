import 'package:flutter/material.dart';
import 'package:materialdesignflutter/models/country.dart';
import 'package:materialdesignflutter/utils/constants.dart';

enum ScrollPhysics {
  ClampingScrollPhysics,
  BouncingScrollPhysics,
  FixedExtentScrollPhysics,
  NeverScrollableScrollPhysics
}

var title = Constants.CLAMP;
ScrollPhysics _scrollPhysics = ScrollPhysics.ClampingScrollPhysics;

class ListScrollPhysics extends StatefulWidget {
  @override
  _ListScrollPhysicsState createState() => _ListScrollPhysicsState();
}

class _ListScrollPhysicsState extends State<ListScrollPhysics> {

  var swipeList = List<Country>();

  @override
  void initState() {
    super.initState();
    swipeList.addAll(Country.getCountries());
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Scroll Physics is: " + _scrollPhysics.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (ScrollPhysics value) {
              setState(() {
                _scrollPhysics = value;
                getTitle();
              });
            },
            itemBuilder: (context) {
              return popup_item();
            },
          ),
        ],
      ),
      body: getList(),
    );
  }

  Widget getList() {
    switch (_scrollPhysics) {
      case ScrollPhysics.ClampingScrollPhysics:
        return getClampingList();
      case ScrollPhysics.BouncingScrollPhysics:
        return getBouncingList();
      case ScrollPhysics.FixedExtentScrollPhysics:
        return getFixedExtentList();
      default:
        return getNeverScrollList();
    }
  }

  getTitle() {
    switch (_scrollPhysics) {
      case ScrollPhysics.ClampingScrollPhysics:
        title = Constants.CLAMP;
        break;
      case ScrollPhysics.BouncingScrollPhysics:
        title = Constants.BOUNCE;
        break;
      case ScrollPhysics.FixedExtentScrollPhysics:
        title = Constants.FIXED;
        break;
      default:
        title = Constants.NEVER;
    }
  }

  getClampingList() {
    return ListView(
      physics: ClampingScrollPhysics(),
      children: countryData(),
    );
  }

  getNeverScrollList() {
    return ListView(
      physics: NeverScrollableScrollPhysics(),
      children: countryData(),
    );
  }

  getBouncingList() {
    return ListView(
      physics: BouncingScrollPhysics(),
      children: countryData(),
    );
  }

  getFixedExtentList() {
    return ListWheelScrollView(
      controller: FixedExtentScrollController(),
      physics: FixedExtentScrollPhysics(),
      itemExtent: 80.0,
      children: countryData(),
    );
  }

  List<Widget> countryData() {
    return List.generate(
      swipeList.length, (index) => listItem(index),
    );
  }

  Widget listItem(int index) {
    return Card(
      child: ListTile(
        leading: Image.asset(swipeList[index].flag),
        title: Text(
          swipeList[index].name,
          style: TextStyle(fontSize: 18.0),
        ),
        subtitle: Text(
          swipeList[index].capital,
          style: TextStyle(fontSize: 18.0),
        ),
      ),
    );
  }

  List<PopupMenuItem<ScrollPhysics>> popup_item() {
    return <PopupMenuItem<ScrollPhysics>>[
      const PopupMenuItem<ScrollPhysics>(
          value: ScrollPhysics.ClampingScrollPhysics, child: const Text(Constants.CLAMP)),
      const PopupMenuItem<ScrollPhysics>(
          value: ScrollPhysics.BouncingScrollPhysics, child: const Text(Constants.BOUNCE)),
      const PopupMenuItem<ScrollPhysics>(
          value: ScrollPhysics.FixedExtentScrollPhysics, child: const Text(Constants.FIXED)),
      const PopupMenuItem<ScrollPhysics>(
          value: ScrollPhysics.NeverScrollableScrollPhysics, child: const Text(Constants.NEVER)),
    ];
  }
}
