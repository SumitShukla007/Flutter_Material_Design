import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'models/colors.dart';

class ColorPalette extends StatefulWidget {
  @override
  _ColorPaletteState createState() => _ColorPaletteState();
}

class _ColorPaletteState extends State<ColorPalette> with SingleTickerProviderStateMixin {
  var myColors = new MyColors();
  TabController tabController;
  var toolbarColor = Colors.red;
  List<DisplayColor> displayColorList = [];

  @override
  void initState() {
    super.initState();
    toolbarColor = Colors.red;
    tabController = TabController(vsync: this, length: myColors.getColorNames().length);
    tabController.addListener(() {
      setState(() {
        updateTbColor();
      });
    });

    displayColorList.add(DisplayColor(myColors.getRedColor()));
    displayColorList.add(DisplayColor(myColors.getPinkColor()));
    displayColorList.add(DisplayColor(myColors.getPurpleColor()));
    displayColorList.add(DisplayColor(myColors.getDeepPurpleColor()));
    displayColorList.add(DisplayColor(myColors.getIndigo()));
    displayColorList.add(DisplayColor(myColors.getBlue()));
    displayColorList.add(DisplayColor(myColors.getLightBlue()));
    displayColorList.add(DisplayColor(myColors.getCyan()));
    displayColorList.add(DisplayColor(myColors.getTeal()));
    displayColorList.add(DisplayColor(myColors.getGreen()));
    displayColorList.add(DisplayColor(myColors.getLightGreen()));
    displayColorList.add(DisplayColor(myColors.getLime()));
    displayColorList.add(DisplayColor(myColors.getYellow()));
    displayColorList.add(DisplayColor(myColors.getAmber()));
    displayColorList.add(DisplayColor(myColors.getOrange()));
    displayColorList.add(DisplayColor(myColors.getDeepOrange()));
    displayColorList.add(DisplayColor(myColors.getBrown()));
    displayColorList.add(DisplayColor(myColors.getGrey()));
    displayColorList.add(DisplayColor(myColors.getBlueGrey()));
  }

  void updateTbColor() {
    switch (tabController.index) {
      case 0:
        toolbarColor = Colors.red;
        break;
      case 1:
        toolbarColor = Colors.pink;
        break;
      case 2:
        toolbarColor = Colors.purple;
        break;
      case 3:
        toolbarColor = Colors.deepPurple;
        break;
      case 4:
        toolbarColor = Colors.indigo;
        break;
      case 5:
        toolbarColor = Colors.blue;
        break;
      case 6:
        toolbarColor = Colors.lightBlue;
        break;
      case 7:
        toolbarColor = Colors.cyan;
        break;
      case 8:
        toolbarColor = Colors.teal;
        break;
      case 9:
        toolbarColor = Colors.green;
        break;
      case 10:
        toolbarColor = Colors.lightGreen;
        break;
      case 11:
        toolbarColor = Colors.lime;
        break;
      case 12:
        toolbarColor = Colors.yellow;
        break;
      case 13:
        toolbarColor = Colors.amber;
        break;
      case 14:
        toolbarColor = Colors.orange;
        break;
      case 15:
        toolbarColor = Colors.deepOrange;
        break;
      case 16:
        toolbarColor = Colors.brown;
        break;
      case 17:
        toolbarColor = Colors.grey;
        break;
      case 18:
        toolbarColor = Colors.blueGrey;
        break;
    }
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("Build Selected Index is: ${tabController.index}");
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ),
      child: DefaultTabController(
        length: myColors.getColorNames().length,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: toolbarColor,
            title: const Text("Color Codes"),
            bottom: TabBar(
              controller: tabController,
              indicatorColor: Colors.white,
              isScrollable: true,
              tabs: List.generate(myColors.getColorNames().length, (index) {
                return Tab(text: myColors.getColorNames()[index]);
              }),
            ),
          ),
          body: TabBarView(
            controller: tabController,
            children: List.generate(myColors.getColorNames().length, (index) {
              return ListView.builder(
                itemCount: displayColorList[index].colorsList.length,
                itemBuilder: (context, pos) {
                  return Container(
                    color: displayColorList[index].colorsList[pos].color,
                    child: ListTile(
                      title: Text(
                        '${displayColorList[index].colorsList[pos].colorCode}',
                        style: TextStyle(
                            color: displayColorList[index].colorsList[pos].isLight ? Colors.black : Colors.white),
                      ),
                      subtitle: Text(
                        '${displayColorList[index].colorsList[pos].colorNum}',
                        style: TextStyle(
                            color: displayColorList[index].colorsList[pos].isLight ? Colors.black : Colors.white),
                      ),
                      trailing: Icon(
                        Icons.content_copy,
                        color: displayColorList[index].colorsList[pos].isLight ? Colors.black : Colors.white,
                      ),
                    ),
                  );
                },
              );
            }),
          ),
        ),
      ),
    );
  }
}

class DisplayColor {
//  String colorName;
  List<MyColors> colorsList;

  DisplayColor(this.colorsList);
}
