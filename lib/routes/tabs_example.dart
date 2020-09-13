import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

enum TABS_TYPE { TabsIcon, TabsScroll, CustomTabs, TabsText, TabsIconText }

TABS_TYPE _tabsType = TABS_TYPE.TabsIcon;

class TabsScreen extends StatefulWidget {
  @override
  _TabsScreenState createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  @override
  Widget build(BuildContext context) {
    return getSelectedTab();
  }

  getSelectedTab() {
    switch (_tabsType) {
      case TABS_TYPE.TabsIcon:
        return getTabsIcon();
      case TABS_TYPE.TabsIconText:
        return getTabsIconText();
      case TABS_TYPE.TabsText:
        return getTabsText();
      case TABS_TYPE.CustomTabs:
        return getCustomTabs();
      case TABS_TYPE.TabsScroll:
        return getTabScroll();
    }
  }

  getTabsIcon() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: getTabsType(),
          title: Text("Tabs Icon"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(icon: Icon(Icons.home)),
              Tab(icon: Icon(Icons.dashboard)),
              Tab(icon: Icon(Icons.notifications)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text(Constants.HOME)),
            Center(child: Text(Constants.DASHBOARD)),
            Center(child: Text(Constants.NOTIFICATION)),
          ],
        ),
      ),
    );
  }

  getTabScroll() {
    return DefaultTabController(
      length: 10,
      child: Scaffold(
        appBar: AppBar(
          actions: getTabsType(),
          title: Text("Tabs Scroll"),
          bottom: TabBar(
            isScrollable: true,
            indicatorWeight: 4,
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(text: "Tabs 1"),
              Tab(text: "Tabs 2"),
              Tab(text: "Tabs 3"),
              Tab(text: "Tabs 4"),
              Tab(text: "Tabs 5"),
              Tab(text: "Tabs 6"),
              Tab(text: "Tabs 7"),
              Tab(text: "Tabs 8"),
              Tab(text: "Tabs 9"),
              Tab(text: "Tabs 10"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text("Tabs 1")),
            Center(child: Text("Tabs 2")),
            Center(child: Text("Tabs 3")),
            Center(child: Text("Tabs 4")),
            Center(child: Text("Tabs 5")),
            Center(child: Text("Tabs 6")),
            Center(child: Text("Tabs 7")),
            Center(child: Text("Tabs 8")),
            Center(child: Text("Tabs 9")),
            Center(child: Text("Tabs 10")),
          ],
        ),
      ),
    );
  }

  getCustomTabs() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actionsIconTheme: IconThemeData(color: Colors.black),
          actions: getTabsType(),
          elevation: 2,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          title: Text(
            "Custom Tabs",
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          bottom: TabBar(
            indicatorColor: Colors.white,
            unselectedLabelColor: Colors.redAccent,
            indicator: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: Colors.redAccent,
            ),
            tabs: <Widget>[
              Tab(
                child: Container(
                  child: Align(alignment: Alignment.center, child: Text("Tab 1")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(color: Colors.redAccent, width: 1),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Align(alignment: Alignment.center, child: Text("Tab 2")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(color: Colors.redAccent, width: 1),
                  ),
                ),
              ),
              Tab(
                child: Container(
                  child: Align(alignment: Alignment.center, child: Text("Tab 3")),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(color: Colors.redAccent, width: 1),
                  ),
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text("Tabs 1")),
            Center(child: Text("Tabs 2")),
            Center(child: Text("Tabs 3")),
          ],
        ),
      ),
    );
  }

  getTabsText() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: getTabsType(),
          title: Text("Tabs Text"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(text: "Tabs 1"),
              Tab(text: "Tabs 2"),
              Tab(text: "Tabs 3"),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text("Tabs 1")),
            Center(child: Text("Tabs 2")),
            Center(child: Text("Tabs 3")),
          ],
        ),
      ),
    );
  }

  getTabsIconText() {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          actions: getTabsType(),
          title: Text("Tabs Text"),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: <Widget>[
              Tab(
                text: "Tabs 1",
                icon: Icon(Icons.home),
              ),
              Tab(
                text: "Tabs 2",
                icon: Icon(Icons.dashboard),
              ),
              Tab(
                text: "Tabs 3",
                icon: Icon(Icons.notifications),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Center(child: Text("Tabs 1")),
            Center(child: Text("Tabs 2")),
            Center(child: Text("Tabs 3")),
          ],
        ),
      ),
    );
  }

  getTabsType() {
    return <Widget>[
      PopupMenuButton<TABS_TYPE>(
        onSelected: (TABS_TYPE value) {
          setState(() {
            _tabsType = value;
          });
        },
        itemBuilder: (BuildContext context) => <PopupMenuItem<TABS_TYPE>>[
          PopupMenuItem<TABS_TYPE>(
            value: TABS_TYPE.TabsIcon,
            child: Text('Icon Tabs'),
          ),
          PopupMenuItem<TABS_TYPE>(
            value: TABS_TYPE.TabsScroll,
            child: Text('Scrolling Tabs '),
          ),
          PopupMenuItem<TABS_TYPE>(
            value: TABS_TYPE.CustomTabs,
            child: Text('Custom Tabs'),
          ),
          PopupMenuItem<TABS_TYPE>(
            value: TABS_TYPE.TabsIconText,
            child: Text('Text & Icon Tabs'),
          ),
          PopupMenuItem<TABS_TYPE>(
            value: TABS_TYPE.TabsText,
            child: Text('Text Tabs'),
          ),
        ],
      ),
    ];
  }
}
