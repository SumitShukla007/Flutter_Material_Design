import 'package:flutter/material.dart';
import 'package:package_info/package_info.dart';

class AboutScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AboutScreenState();
  }
}

class AboutScreenState extends State<AboutScreen> {
  String versionName;

  getVersionName() async {
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    setState(() {
      versionName = packageInfo.version;
    });
  }

  @override
  void initState() {
    super.initState();
    getVersionName();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('AboutScreen'),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: FlutterLogo(),
            title: Text('Flutter Material Design.'),
            subtitle: Text("Version : $versionName"),
          ),
          Divider(),
          ListTile(
            leading: Icon(
              Icons.info,
            ),
            title: Text(
              'Designed & Developed by Sumit Shukla.',
              style: TextStyle(color: Colors.black54, fontSize: 14.0),
            ),
          ),
          Divider(),
          ListTile(
            title: Text(
                "This app is aimed for complete beginners in Flutter, to get them acquainted with the various basic widgets in Flutter. "
                    "Try examples and get familiar with various widgets in Flutter."),
          ),
          Divider(),
          Align(
            alignment: Alignment.bottomCenter,
            child: ListTile(
              title: Text(
                  "I will love to review any changes that you submit, so check out the source, pick a bug or feature, and file a PR."),
            ),
          )
        ],
      ),
    );
  }
}