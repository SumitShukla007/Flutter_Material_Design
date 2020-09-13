import 'package:flutter/material.dart';
import 'package:materialdesignflutter/models/country.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class BannersScreen extends StatefulWidget {
  @override
  _BannersScreenState createState() => _BannersScreenState();
}

enum BANNER_TYPE { MaterialBanner, Banner }

var banner = BANNER_TYPE.Banner;
bool _displayBanner = true;

class _BannersScreenState extends State<BannersScreen> {
  var countryList;

  @override
  void initState() {
    super.initState();
    countryList = Country.getCountries();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.BANNERS),
        actions: <Widget>[
          PopupMenuButton<BANNER_TYPE>(
            onSelected: (BANNER_TYPE value) {
              setState(() {
                banner = value;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuItem<BANNER_TYPE>>[
              PopupMenuItem<BANNER_TYPE>(
                value: BANNER_TYPE.MaterialBanner,
                child: Text("MaterialBanner"),
              ),
              PopupMenuItem<BANNER_TYPE>(
                value: BANNER_TYPE.Banner,
                child: Text("Banner"),
              )
            ],
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: getBannersWidget(),
      ),
    );
  }

  getBannersWidget() {
    switch (banner) {
      case BANNER_TYPE.MaterialBanner:
        return listWithBanner();
      case BANNER_TYPE.Banner:
        return getBanners();
    }
  }

  getBanners() {
    return Column(
      children: <Widget>[
        ClipRect(
          child: Banner(
            message: "Banner",
            location: BannerLocation.bottomStart,
            color: Colors.pink,
            child: Container(
              color: Colors.orangeAccent,
              height: 80,
              child: Center(
                child: Text(
                  "Bottom Start banner!",
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        ClipRect(
          child: Banner(
            message: "hello",
            location: BannerLocation.bottomEnd,
            color: Colors.purple,
            child: Container(
              color: Colors.orangeAccent,
              height: 80,
              child: Center(
                child: Text(
                  "Bottom End banner!",
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        ClipRect(
          child: Banner(
            message: "hello",
            location: BannerLocation.topStart,
            color: Colors.indigo,
            child: Container(
              color: Colors.orangeAccent,
              height: 80,
              child: Center(
                child: Text(
                  "Top Start banner!",
                ),
              ),
            ),
          ),
        ),
        SizedBox(
          height: 8.0,
        ),
        ClipRect(
          child: Banner(
            message: "hello",
            location: BannerLocation.topEnd,
            color: Colors.lightGreen,
            child: Container(
              color: Colors.orangeAccent,
              height: 80,
              child: Center(
                child: Text(
                  "Top End banner!",
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }

  materialBanner() {
    return MaterialBanner(
      backgroundColor: Colors.grey[200],
      content: const Text("You need to sign in to get details of countries."),
      leading: CircleAvatar(
        child: Icon(Icons.delete),
      ),
      actions: <Widget>[
        FlatButton(
          child: const Text('SIGN IN'),
          onPressed: () {},
        ),
        FlatButton(
          child: const Text('DISMISS'),
          onPressed: () {
            setState(() {
              _displayBanner = false;
            });
          },
        ),
      ],
    );
  }

  listWithBanner() {
    return ListView.builder(
        itemCount: _displayBanner ? countryList.length + 1 : countryList.length,
        itemBuilder: (context, index) {
          if (index == 0 && _displayBanner) {
            return materialBanner();
          }
          return ListTile(
            leading: Image.asset(countryList[_displayBanner ? index - 1 : index].flag, width: 50.0, height: 50.0),
            title: Text("${countryList[_displayBanner ? index - 1 : index].name}"),
            subtitle: Text("${countryList[_displayBanner ? index - 1 : index].capital}"),
          );
        });
  }
}
