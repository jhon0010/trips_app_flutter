import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {

  String namePlace;
  int starts;
  String descriptionPlace;

  // constructor in dart
  DescriptionPlace(this.namePlace, this.starts, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final start_boder = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xfff2c611),
      ),
    );

    final start_half = Container(
      margin: EdgeInsets.only(
          top: 323.0,
          right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xfff2c611),
      ),
    );

    final start = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xfff2c611),
      ),
    );

    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
        this.descriptionPlace,
        style: const TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );

    final tittleStarts = Row(
      children: [
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
              right: 20.0
          ),
            child: Text(
              this.namePlace,
              style : TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900
              ),
              textAlign: TextAlign.left,
            ),
        ),
        Row(
          children: [
            start,
            start,
            start,
            start,
            start_boder
          ],
        )
      ],
    );

    return Column(
      children: [
        tittleStarts,
        description
      ],
    );
  }

}