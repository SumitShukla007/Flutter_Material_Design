import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class TypographyScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.TYPOGRAPHY),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(left: 12.0, right: 12.0),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text("H1", style: Theme.of(context).textTheme.headline1),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("light 96.0"),
                        Text("headline1", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("H2", style: Theme.of(context).textTheme.headline2),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("light 60.0"),
                        Text(
                          "headline2",
                          style: TextStyle(color: Theme.of(context).accentColor),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("H3", style: Theme.of(context).textTheme.headline3),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("regular 48.0"),
                        Text("headline3", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("H4", style: Theme.of(context).textTheme.headline4),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("regular 34.0"),
                        Text("headline4", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("H5", style: Theme.of(context).textTheme.headline4),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("regular 24.0"),
                        Text("headline5", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("H6", style: Theme.of(context).textTheme.headline4),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("medium 20.0"),
                        Text("headline6", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("Subtitle1", style: Theme.of(context).textTheme.subtitle1),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("regular 16.0"),
                        Text("subtitle1", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("Subtitle2", style: Theme.of(context).textTheme.subtitle2),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("medium 14.0"),
                        Text("subtitle2", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("Body 1", style: Theme.of(context).textTheme.bodyText1),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("regular 16.0"),
                        Text("body1", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("Body 2", style: Theme.of(context).textTheme.bodyText2),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("regular 14.0"),
                        Text("body2", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("Button", style: Theme.of(context).textTheme.button),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("medium 14.0"),
                        Text("button", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("Caption", style: Theme.of(context).textTheme.button),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("regular 12.0"),
                        Text("caption", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
              Divider(),
              Row(
                children: <Widget>[
                  Text("Overline", style: Theme.of(context).textTheme.button),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("regular 10.0"),
                        Text("overline", style: TextStyle(color: Theme.of(context).accentColor)),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
