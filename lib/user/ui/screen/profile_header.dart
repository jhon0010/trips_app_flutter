import 'package:flutter/material.dart';
import 'package:trips_app_flutter/user/ui/widgets/button_bar.dart';
import 'package:trips_app_flutter/user/ui/widgets/user_info.dart';

class ProfileHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final title = Text(
      'Profile',
      style: TextStyle(
          fontFamily: 'Lato',
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 30.0
      ),
    );

    return Container(
      margin: EdgeInsets.only(
          left: 20.0,
          right: 20.0,
          top: 50.0
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              title
            ],
          ),
          UserInfo('assets/img/girl.jpg', 'Some girl','some_girl@something.com'),
          ButtonsBar()
        ],
      ),
    );
  }

}