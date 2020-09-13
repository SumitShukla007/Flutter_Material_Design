import 'package:flutter/material.dart';

enum AppBarBehaviour { normal, pinned, floating, snap }

final double _appBarHeight = 220.0;
AppBarBehaviour appBarBehaviour = AppBarBehaviour.pinned;

class SliverScreen extends StatefulWidget {
  @override
  _SliverScreenState createState() => _SliverScreenState();
}

class _SliverScreenState extends State<SliverScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            floating: appBarBehaviour == AppBarBehaviour.floating || appBarBehaviour == AppBarBehaviour.snap,
            pinned: appBarBehaviour == AppBarBehaviour.pinned,
            snap: appBarBehaviour == AppBarBehaviour.snap,
            expandedHeight: _appBarHeight,
            centerTitle: true,
            actions: <Widget>[
              PopupMenuButton(
                onSelected: (AppBarBehaviour value) {
                  setState(() {
                    appBarBehaviour = value;
                  });
                },
                itemBuilder: (BuildContext context) {
                  return <PopupMenuItem<AppBarBehaviour>>[
                    const PopupMenuItem<AppBarBehaviour>(
                        value: AppBarBehaviour.normal, child: const Text('App bar scrolls away')),
                    const PopupMenuItem<AppBarBehaviour>(
                        value: AppBarBehaviour.pinned, child: const Text('App bar stays put')),
                    const PopupMenuItem<AppBarBehaviour>(
                        value: AppBarBehaviour.floating, child: const Text('App bar floats')),
                    const PopupMenuItem<AppBarBehaviour>(
                        value: AppBarBehaviour.snap, child: const Text('App bar snaps')),
                  ];
                },
              ),
            ],
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "images/img.webp",
                fit: BoxFit.fill,
              ),
              title: Text("Flutter"),
              centerTitle: false,
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(getList()),
          ),
        ],
      ),
    );
  }

  getList() {
    List<Widget> listItems = List<Widget>();

    for (int i = 0; i < 20; i++) {
      listItems.add(
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Text(
            'Item ${i.toString()}',
            style: TextStyle(fontSize: 18.0),
          ),
        ),
      );
    }
    return listItems;
  }
}
