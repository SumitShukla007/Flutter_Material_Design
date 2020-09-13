import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class CardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.CARDVIEW),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              getCard1(context),
              getCard2(context),
              getCard3(context),
              getCard4(context),
              getCard5(context),
              getCard6(context),
              getCard7(context),
            ],
          ),
        ),
      ),
    );
  }

  getCard7(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.arrow_drop_down_circle),
            title: const Text('Card title 1'),
            subtitle: Text(
              'Secondary Text',
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              Constants.SUBTITLE_SMALL_TEXT,
              style: TextStyle(color: Colors.black.withOpacity(0.6)),
            ),
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              FlatButton(
                onPressed: () {
                  // Perform some action
                },
                child: const Text('ACTION 1'),
              ),
              FlatButton(
                onPressed: () {
                  // Perform some action
                },
                child: const Text('ACTION 2'),
              ),
            ],
          ),
        ],
      ),
    );
  }

  getCard3(BuildContext context) {
    return Card(
//        shape: CircleBorder(
//          side: BorderSide(width: 8.0),
//        ),
      child: InkWell(
        splashColor: Theme.of(context).primaryColor.withAlpha(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.play_circle_outline),
              title: Text(
                "This is a title",
                style: Theme.of(context).textTheme.title,
              ),
              subtitle: Text(
                "This is a subtitle",
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
            ButtonBar(
              children: <Widget>[
                FlatButton(onPressed: () {}, child: Text('Cancel')),
                FlatButton(onPressed: () {}, child: Text('Ok')),
              ],
            ),
          ],
        ),
      ),
    );
  }

  getCard1(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
//      shape: RoundedRectangleBorder(
//        borderRadius: BorderRadius.circular(16.0),
//      ),
      child: InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image(image: AssetImage("images/ic_display_cup.jpeg")),
            ListTile(
              title: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Text(Constants.TITLE_TEXT),
              ),
              subtitle: Padding(padding: EdgeInsets.only(top: 8.0), child: Text(Constants.SUBTITLE_SMALL_TEXT)),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.end,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text("Cancel"),
                ),
                FlatButton(
                  onPressed: () {},
                  child: Text("Ok"),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  getCard4(BuildContext context) {
    return Card(
      child: InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(leading: Icon(Icons.location_on), title: Text("45/A Some location")),
            ListTile(leading: Icon(Icons.call), title: Text("079-86543232")),
            ListTile(leading: Icon(Icons.history), title: Text("Wed,10AM-9PM")),
            ListTile(leading: Icon(Icons.email), title: Text("shukla.sumit171@gmail.com")),
          ],
        ),
      ),
    );
  }

  getCard5(BuildContext context) {
    return Card(
      child: InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ListTile(
              title: Text(Constants.TITLE_TEXT),
              subtitle: Padding(padding: EdgeInsets.only(top: 8.0), child: Text(Constants.SUBTITLE_TEXT)),
            ),
            ButtonBar(
              alignment: MainAxisAlignment.start,
              children: <Widget>[
                FlatButton(
                  onPressed: () {},
                  child: Text("Play Now"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  getCard6(BuildContext context) {
    return Card(
      child: InkWell(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Image.asset(
              'images/ic_display_coffee.jpeg',
              fit: BoxFit.fill,
            ),
            ButtonBar(
              alignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.share),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.access_time),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.bookmark_border),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.favorite_border),
                  onPressed: () {},
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  getCard2(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: Card(
                child: stackCardData(),
              ),
            ),
            Expanded(
              child: Card(
                child: stackCardData(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  stackCardData() {
    return Column(
      children: <Widget>[
        Stack(
          alignment: AlignmentDirectional.bottomStart,
          children: <Widget>[
            Image(
              fit: BoxFit.cover,
              height: 240.0,
              image: AssetImage('images/img.webp'),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Hello there!",
                style: TextStyle(fontSize: 18.0, color: Colors.white),
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.share),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.bookmark_border),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.favorite_border),
              onPressed: () {},
            )
          ],
        )
      ],
    );
  }
}

