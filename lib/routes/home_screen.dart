import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:materialdesignflutter/animations/screens_animation/anim_screen_type.dart';
import 'package:materialdesignflutter/models/home_data.dart';
import 'package:materialdesignflutter/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

import '../color_palette.dart';
import 'about.dart';
import 'app_bar.dart';
import 'banners.dart';
import 'bottom_nav.dart';
import 'bottom_sheet.dart';
import 'btm_app_bar.dart';
import 'buttons_.dart';
import 'cards.dart';
import 'chips.dart';
import 'data_table.dart';
import 'dialogs_demo.dart';
import 'lists/lists_type.dart';
import 'material_palette.dart';
import 'menus.dart';
import 'pickers.dart';
import 'progress_.dart';
import 'ripple_example.dart';
import 'selection_controls.dart';
import 'sliders.dart';
import 'sliver_appbar.dart';
import 'snackbars_.dart';
import 'swipe_refresh.dart';
import 'tabs_example.dart';
import 'textfields_.dart';
import 'toolbars_.dart';
import 'typography_.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey<ScaffoldState>();
  var platform = const MethodChannel(Constants.METHOD_CHANNEL);

  var titleTheme = TextTheme(headline6: TextStyle(fontWeight: FontWeight.bold));

  List<HomeData> listData = [
    HomeData(Constants.APPBAR, Constants.APPBAR_DESC),
    HomeData(Constants.BANNERS, Constants.BANNERS_DESC),
    HomeData(Constants.BOTTOM_APPBAR, Constants.BOTTOM_APPBAR_DESC),
    HomeData(Constants.BOTTOM_NAVIGATION, Constants.BOTTOM_NAVIGATION_DESC),
    HomeData(Constants.BOTTOM_SHEET, Constants.BOTTOM_SHEET_DESC),
    HomeData(Constants.BUTTONS, Constants.BUTTONS_DESC),
    HomeData(Constants.CARDVIEW, Constants.CARDVIEW_DESC),
    HomeData(Constants.CHIPS, Constants.CHIPS_DESC),
    HomeData(Constants.DATA_TABLE, Constants.DATA_TABLE_DESC),
    HomeData(Constants.DIALOGS, Constants.DIALOGS_DESC),
    HomeData(Constants.MENUS, Constants.MENUS_DESC),
    HomeData(Constants.PICKERS, Constants.PICKERS_MENU),
    HomeData(Constants.PROGRESS, Constants.PROGRESS_DESC),
    HomeData(Constants.LIST, Constants.LIST_DESC),
    HomeData(Constants.RIPPLE, Constants.RIPPLE_DESC),
    HomeData(Constants.SELECTION_CONTROLS, Constants.SELECTION_CONTROLS_DESC),
    HomeData(Constants.SLIDERS, Constants.SLIDERS_DESC),
    HomeData(Constants.SLIVERS, Constants.SLIVERS_DESC),
    HomeData(Constants.SNACKBAR, Constants.SNACKBAR_DESC),
    HomeData(Constants.SWIPE_REFRESH, Constants.SWIPE_REFRESH_DESC),
    HomeData(Constants.TABS, Constants.TABS_DESC),
    HomeData(Constants.TEXTFIELD, Constants.TEXTFIELD_DESC),
    //HomeData(Constants.TOOLBAR, Constants.TOOLBAR_DESC),
    HomeData(Constants.TYPOGRAPHY, Constants.TYPOGRAPHY_DESC),
  ];

  navigateToScreen(Widget screen, BuildContext context) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, anotherAnimation) {
          return screen;
        },
        transitionDuration: Duration(milliseconds: 500),
        transitionsBuilder: (context, animation, anotherAnimation, child) {
          animation = CurvedAnimation(curve: Curves.linear, parent: animation);
          return SlideTransition(
            position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0)).animate(animation),
            child: child,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,
      drawer: Drawer(child: drawerItems(context)),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            title: Text("Home"),
            floating: true,
            pinned: false,
            snap: true,
            actions: <Widget>[buildPopupMenuButton()],
          ),
          SliverList(
            delegate: SliverChildListDelegate(getList(context)),
          ),
        ],
      ),
    );
  }

  getList(context) {
    var expandList = List<Widget>();

    for (int i = 0; i < listData.length; i++) {
      expandList.add(Container(
        color: Colors.white,
        child: InkWell(
          highlightColor: Colors.black12,
          splashColor: Colors.black12,
          child: ListTile(
            onTap: () => openScreen(listData[i].widgetName, context),
            leading: Container(
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey[300],
              ),
              child: Center(
                child: Text(
                  listData[i].widgetName[0].toString(),
                ),
              ),
            ),
            title: Text(
              listData[i].widgetName,
              style: Theme.of(context).textTheme.headline6.merge(
                    TextStyle(fontWeight: FontWeight.bold),
                  ),
            ),
            subtitle: Text(
              listData[i].widgetDesc,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            trailing: Icon(Icons.arrow_right),
          ),
        ),
      ));
    }

    // expandList.add();

    return expandList;
  }

  openScreen(String widgetName, BuildContext context) {
    // debugPrint("Widget name: $widgetName");
    switch (widgetName) {
      case Constants.APPBAR:
        navigateToScreen(AppBarExample(), context);
        break;
      case Constants.BANNERS:
        navigateToScreen(BannersScreen(), context);
        break;
      case Constants.BOTTOM_APPBAR:
        navigateToScreen(BtmAppBar(), context);
        break;
      case Constants.BOTTOM_NAVIGATION:
        navigateToScreen(BtmNavScreen(), context);
        break;
      case Constants.BOTTOM_SHEET:
        navigateToScreen(BottomSheetScreen(), context);
        break;
      case Constants.BUTTONS:
        navigateToScreen(ButtonsScreen(), context);
        break;
      case Constants.CARDVIEW:
        navigateToScreen(CardsScreen(), context);
        break;
      case Constants.CHIPS:
        navigateToScreen(ChipsScreen(), context);
        break;
      case Constants.DATA_TABLE:
        navigateToScreen(DataTableScreen(), context);
        break;
      case Constants.DIALOGS:
        navigateToScreen(DialogsScreen(), context);
        break;
      case Constants.MENUS:
        navigateToScreen(MenuScreen(), context);
        break;
      case Constants.PICKERS:
        navigateToScreen(PickersScreen(), context);
        break;
      case Constants.RIPPLE:
        navigateToScreen(RippleScreen(), context);
        break;
      case Constants.PROGRESS:
        navigateToScreen(ProgressScreen(), context);
        break;
      case Constants.SELECTION_CONTROLS:
        navigateToScreen(SelectionControlsScreen(), context);
        break;
      case Constants.LIST:
        navigateToScreen(ListTypeScreen(), context);
        break;
      case Constants.SLIDERS:
        navigateToScreen(SliderScreen(), context);
        break;
      case Constants.SLIVERS:
        navigateToScreen(SliverScreen(), context);
        break;
      case Constants.SNACKBAR:
        navigateToScreen(SnackbarsScreen(), context);
        break;
      case Constants.SWIPE_REFRESH:
        navigateToScreen(SwipeRefreshScreen(), context);
        break;
      case Constants.TABS:
        navigateToScreen(TabsScreen(), context);
        break;
      case Constants.TEXTFIELD:
        navigateToScreen(TextFieldScreen(), context);
        break;
      case Constants.TOOLBAR:
        navigateToScreen(ToolbarScreen(), context);
        break;
      case Constants.TYPOGRAPHY:
        navigateToScreen(TypographyScreen(), context);
        break;
    }
  }

  PopupMenuButton<String> buildPopupMenuButton() {
    return PopupMenuButton(
      onSelected: handleClick,
      itemBuilder: (BuildContext context) {
        return <PopupMenuItem<String>>[
          const PopupMenuItem<String>(value: Constants.WHATSAPP_HELP, child: const Text('Whatsapp Help')),
          const PopupMenuItem<String>(value: Constants.FEEDBACK, child: const Text('Feedback')),
        ];
      },
    );
  }

  Future<void> handleClick(String value) async {
    switch (value) {
      case Constants.WHATSAPP_HELP:
        var phone = "+917990851583";
        var whatsappUrl = "whatsapp://send?phone=$phone";
        await canLaunch(whatsappUrl) ? launch(whatsappUrl) : comingSoonSnackBar("Whatsapp not installed!");
        break;
      case Constants.FEEDBACK:
        _sendEmail();
        break;
    }
  }

  drawerItems(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(0.0),
      children: <Widget>[
        GestureDetector(
          onTap: () => {
            launch(Constants.FLUTTER_DEV),
            closeDrawer(context),
          },
          child: UserAccountsDrawerHeader(
            currentAccountPicture: FlutterLogo(
              colors: Colors.orange,
            ),
            accountEmail: Text("flutter.dev"),
            accountName: Text("Flutter"),
          ),
        ),
        ListTile(
          onTap: () => openFromDrawer(ColorPalette(), context),
          leading: Icon(
            Icons.color_lens,
            color: Colors.black87,
          ),
          title: Text("Color Palette"),
        ),
        ListTile(
          onTap: () => openFromDrawer(AnimScreenType(), context),
          leading: Icon(
            Icons.flare,
            color: Colors.black87,
          ),
          title: Text("Animations"),
        ),
        ListTile(
          onTap: () {
            closeDrawer(context);
            launch(Constants.GITHUB_CODE);
          },
          leading: Icon(
            Icons.code,
            color: Colors.black87,
          ),
          title: Text("Code on Github"),
        ),
        ListTile(
          onTap: () {
            closeDrawer(context);
            launch(Constants.MATERIAL_DESIGN_ANDROID_APP);
          },
          leading: Icon(
            Icons.bubble_chart,
            color: Colors.black87,
          ),
          title: Text("Android Material Design"),
        ),
        ListTile(
          onTap: () => openFromDrawer(MaterialPalette(), context),
          leading: Icon(
            Icons.toys,
            color: Colors.black87,
          ),
          title: Text("Material Palette"),
        ),
        ListTile(
          onTap: () {
            comingSoonSnackBar("Coming Soon");
          },
          leading: Icon(
            Icons.widgets,
            color: Colors.black87,
          ),
          title: Text("Widgets"),
        ),
        ListTile(
          onTap: () {
            comingSoonSnackBar("Coming Soon");
          },
          leading: Icon(
            Icons.ac_unit,
            color: Colors.black87,
          ),
          title: Text("Sample UIs"),
        ),
        ListTile(
          onTap: () => {closeDrawer(context), _share()},
          leading: Icon(
            Icons.share,
            color: Colors.black87,
          ),
          title: Text("Share App"),
        ),
        ListTile(
          onTap: () {
            closeDrawer(context);
            launch(Constants.FLUTTER_MATERIAL_DESIGN);
          },
          leading: Icon(
            Icons.star,
            color: Colors.black87,
          ),
          title: Text("Rate Me"),
        ),
        ListTile(
          onTap: () => openFromDrawer(AboutScreen(), context),
          leading: Icon(
            Icons.account_circle,
            color: Colors.black87,
          ),
          title: Text("About"),
        ),
      ],
    );
  }

  Future<Null> _share() async {
    try {
      platform.invokeMethod('share');
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future<Null> _sendEmail() async {
    try {
      platform.invokeMethod('sendEmail');
    } on PlatformException catch (e) {
      print(e);
    }
  }

  comingSoonSnackBar(String msg) {
    closeDrawer(context);
    Future.delayed(Duration(seconds: 2), () {
      var snackBar = SnackBar(
        duration: Duration(seconds: 2),
        content: Text(msg),
      );
      _scaffoldkey.currentState.showSnackBar(snackBar);
    });
  }

  openFromDrawer(Widget screen, BuildContext context) {
    closeDrawer(context);

    //test slide animation then run it.
    Future.delayed(
      Duration(milliseconds: 350),
      () {
        Navigator.push(
          context,
          PageRouteBuilder(
            pageBuilder: (context, animation, anotherAnimation) {
              return screen;
            },
            transitionDuration: Duration(milliseconds: 1000),
            transitionsBuilder: (context, animation, anotherAnimation, child) {
              animation = CurvedAnimation(curve: Curves.linear, parent: animation);
              return SlideTransition(
                position: Tween(begin: Offset(1.0, 0.0), end: Offset(0.0, 0.0)).animate(animation),
                child: child,
              );
            },
          ),
        );
      },
    );
  }

  closeDrawer(BuildContext context) {
    Navigator.pop(context);
  }
}
