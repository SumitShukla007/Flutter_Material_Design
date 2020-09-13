import 'package:flutter/material.dart';
import 'package:materialdesignflutter/utils/constants.dart';

class BtmNavScreen extends StatefulWidget {
  @override
  BtmNavScreenState createState() => BtmNavScreenState();
}

class BtmNavScreenState extends State<BtmNavScreen> with SingleTickerProviderStateMixin {
  int _currentIndex = 0;
  List<String> data = ["Dashboard", "Home", "Notifications"];
  BottomNavigationBarType _type = BottomNavigationBarType.fixed;

  @override
  Widget build(BuildContext context) {
    var bottomNavBar = BottomNavigationBar(
      type: _type,
      currentIndex: _currentIndex,
      onTap: (int index) {
        onItemTapped(index);
      },
      selectedItemColor: _type == BottomNavigationBarType.fixed ? Colors.amber : Colors.white,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.blue,
          icon: Icon(Icons.dashboard),
          title: Text('Dashboard'),
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.green,
          icon: Icon(Icons.home),
          title: Text('Home'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications),
          backgroundColor: Colors.red,
          title: Text('Notifications'),
        )
      ],
    );

    return Scaffold(
      appBar: AppBar(
        title: Text(Constants.BOTTOM_NAVIGATION),
        actions: <Widget>[
          PopupMenuButton<BottomNavigationBarType>(
            onSelected: (BottomNavigationBarType value) {
              setState(() {
                _type = value;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuItem<BottomNavigationBarType>>[
              PopupMenuItem<BottomNavigationBarType>(
                value: BottomNavigationBarType.fixed,
                child: Text('Fixed'),
              ),
              PopupMenuItem<BottomNavigationBarType>(
                value: BottomNavigationBarType.shifting,
                child: Text('Shifting'),
              )
            ],
          ),
        ],
      ),
      body: Center(
        child: Text(
          '${data.elementAt(_currentIndex)}',
          style: TextStyle(fontSize: 20),
        ),
      ),
      bottomNavigationBar: bottomNavBar,
    );
  }

  void onItemTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
