import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = 'assets/img/person.jpg';
  String userName = 'Jhon';
  String details = '1 Review 5 Photos';
  String comment = 'There is an amazing place';

  Review(this.pathImage, this.userName, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20.0
      ),
      child: Text(
        this.userName,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: 'Lato',
          fontSize: 17.0
        ),
      ),
    );


    final userInfo = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        this.details,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 13.0,
            color: Colors.grey
        ),
      ),
    );

    final userCommets = Container(
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text(
        this.comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: 'Lato',
            fontSize: 13.0,
            fontWeight: FontWeight.w900
        ),
      ),
    );

    final start = Container(
      margin: EdgeInsets.only(
          right: 3.0
      ),
      child: Icon(
        Icons.star,
        color: Color(0xfff2c611),
        size: 20,
      ),
    );

    final userStarts = Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        start,
        start,
        start,
        start,
        start
      ],
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            userName,
            userStarts
          ],
        ),
        userInfo,
        userCommets
      ],
    );


    final photo = Container(
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0
      ),
      width: 80.0,
      height: 80.0,

      // The container shape, cut the image making it a circle
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(this.pathImage)
        )
      ),

    );

    return Row(
      children: [
          photo,
          userDetails
      ],
    );
  }

}