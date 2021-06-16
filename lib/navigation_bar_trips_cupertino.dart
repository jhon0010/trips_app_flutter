import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:trips_app_flutter/place/ui/screen/home_trips.dart';
import 'package:trips_app_flutter/place/ui/screen/search_trips.dart';
import 'package:trips_app_flutter/user/ui/screen/profile_trips.dart';

class NavigationBarTripsCupertino extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: CupertinoTabScaffold(
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.indigo), title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.indigo), title: Text("")),
        BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Colors.indigo), title: Text("")),
      ]), tabBuilder: (BuildContext context, int index) {
          switch (index) {
            case 0:
              return CupertinoTabView(
                builder: (BuildContext context) => HomeTrips(),
              );
              break;
            case 1:
              return CupertinoTabView(
                builder: (BuildContext context) => SearchTrips(),
              );
              break;
            case 2:
              return CupertinoTabView(
                builder: (BuildContext context) => ProfileTrips(),
              );
            default : return CupertinoTabView(
              builder: (BuildContext context) => HomeTrips(),
            );
          }
        }
    )
    );
  }
}
