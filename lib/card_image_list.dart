import 'package:flutter/material.dart';
import 'package:trips_app_flutter/card_image.dart';

class CardImageList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      child: ListView(
        padding: EdgeInsets.all(25),
        scrollDirection: Axis.horizontal, // by default vertical
        children: [
          CardImage('assets/img/beach.jpg'),
          CardImage('assets/img/sunset.jpg'),
          CardImage('assets/img/river.jpg'),
          CardImage('assets/img/mountain.jpg'),
        ],
      ),
    );
  }

}