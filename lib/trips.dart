import 'package:flutter/material.dart';
import 'package:trips_app_flutter/home_trips.dart';

class Trips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _Trips();
  }
}

class _Trips extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
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
        body: HomeTrips()
    );
  }

}