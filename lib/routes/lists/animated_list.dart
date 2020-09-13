import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

enum ListAnimation {
  ScaleTransition,
  RotationTransition,
  FadeTransition,
  SlideTransition,
  SizeTransition,
}

var titleData = Constants.SCALE_TRANSITION;
ListAnimation _listAnim = ListAnimation.ScaleTransition;
Animation animation;

class AnimatedListExample extends StatefulWidget {
  @override
  AnimatedListExampleState createState() {
    return AnimatedListExampleState();
  }
}

class AnimatedListExampleState extends State<AnimatedListExample> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey();
  List<String> _data;

  @override
  void initState() {
    super.initState();
    _data = List<String>.generate(5, (index) => "Item ${index + 1}");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(titleData),
        backgroundColor: Colors.blueAccent,
        actions: <Widget>[
          PopupMenuButton(
            onSelected: (ListAnimation value) {
              setState(() {
                _listAnim = value;
                getTitle(_listAnim);
              });
            },
            itemBuilder: (context) {
              return popupItems();
            },
          ),
        ],
      ),
      persistentFooterButtons: <Widget>[
        RaisedButton(
          color: Colors.deepPurple,
          onPressed: () => _addAnItem(),
          child: Text("Add Item"),
        ),
        RaisedButton(
          color: Colors.deepPurple,
          onPressed: () => _removeItem(),
          child: Text("Remove Item"),
        ),
        RaisedButton(
          color: Colors.deepPurple,
          onPressed: () => _removeAllItems(),
          child: Text("Remove All"),
        )
      ],
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _data.length,
        itemBuilder: (context, index, animation) => _buildItem(
          context,
          _data[index],
          animation,
        ),
      ),
    );
  }

  getTitle(_listAnim) {
    switch (_listAnim) {
      case ListAnimation.FadeTransition:
        titleData = Constants.FADE_TRANSITION;
        break;
      case ListAnimation.ScaleTransition:
        titleData = Constants.SCALE_TRANSITION;
        break;
      case ListAnimation.SizeTransition:
        titleData = Constants.SIZE_TRANSITION;
        break;
      case ListAnimation.RotationTransition:
        titleData = Constants.ROTATION_TRANSITION;
        break;
      case ListAnimation.SlideTransition:
        titleData = Constants.SLIDE_TRANSITION;
        break;
    }
  }

  Widget _buildItem(BuildContext context, String item, Animation<double> anim) {
    animation = anim;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: getListAnim(item),
    );
  }

  void _addAnItem() {
    _data.insert(0, "ADDED ITEM");
    _listKey.currentState.insertItem(0, duration: Duration(milliseconds: 500));
  }

  getListAnim(String item) {
    TextStyle textStyle = TextStyle(fontSize: 20);

    getChildItem() {
      return SizedBox(
        height: 50.0,
        child: Card(
          child: Center(
            child: Text(item, style: textStyle),
          ),
        ),
      );
    }

    switch (_listAnim) {
      case ListAnimation.FadeTransition:
        return FadeTransition(opacity: animation, child: getChildItem());
      case ListAnimation.ScaleTransition:
        return ScaleTransition(scale: animation, child: getChildItem());
      case ListAnimation.SizeTransition:
        return SizeTransition(sizeFactor: animation, axis: Axis.vertical, child: getChildItem());
      case ListAnimation.RotationTransition:
        return RotationTransition(turns: animation, child: getChildItem());
      case ListAnimation.SlideTransition:
        return SlideTransition(
          position: Tween<Offset>(
            begin: Offset(-1, 0),
            end: Offset.zero,
          ).animate(animation),
          child: getChildItem(),
        );
    }
  }

  void _removeItem() {
    if (_data.isNotEmpty) removeItem();
  }

  void _removeAllItems() {
    for (var i = 0; i < _data.length; i++) removeItem();
  }

  void removeItem() {
    String itemToRemove = _data[0];
    _listKey.currentState.removeItem(
      0,
      (BuildContext context, Animation<double> animation) => _buildItem(context, itemToRemove, animation),
      duration: const Duration(milliseconds: 500),
    );
    _data.removeAt(0);
  }

  List<PopupMenuItem<ListAnimation>> popupItems() {
    return <PopupMenuItem<ListAnimation>>[
      const PopupMenuItem<ListAnimation>(value: ListAnimation.ScaleTransition, child: const Text('ScaleTransition')),
      const PopupMenuItem<ListAnimation>(value: ListAnimation.SlideTransition, child: const Text('SlideTransition')),
      const PopupMenuItem<ListAnimation>(value: ListAnimation.FadeTransition, child: const Text('FadeTransition')),
      const PopupMenuItem<ListAnimation>(value: ListAnimation.SizeTransition, child: const Text('SizeTransition')),
      const PopupMenuItem<ListAnimation>(
          value: ListAnimation.RotationTransition, child: const Text('RotateTransition')),
    ];
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ListView Example',
      home: AnimatedListExample(),
    );
  }
}
