import 'package:flutter/material.dart';
import 'package:trips_app_flutter/place/ui/screen/home_trips.dart';
import 'package:trips_app_flutter/place/ui/screen/search_trips.dart';
import 'package:trips_app_flutter/user/ui/screen/profile_trips.dart';

class NavigationBarTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _NavigationBarTrips();
  }
}

class _NavigationBarTrips extends State {

  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int tapIndex){ // start from 0
    setState(() {
      this.indexTap = tapIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body : widgetsChildren[this.indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
            currentIndex: this.indexTap, // indicates what is the current index
            onTap: onTapTapped, // the index tap is automatically passed to the function
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                title: Text('Home')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.search),
                  title: Text('Search')
              ),
              BottomNavigationBarItem(
                  icon: Icon(Icons.person),
                  title: Text('Person')
              ),
            ],
          ),
        ),
    );
  }

}