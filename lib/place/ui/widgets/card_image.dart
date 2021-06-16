import 'package:flutter/material.dart';
import 'package:trips_app_flutter/widgets/floating_action_button_green.dart';

class CardImage extends StatelessWidget {

    String pathImage = 'assets/img/beach.jpg';

    CardImage(this.pathImage);

  @override
  Widget build(BuildContext context) {

    final card = Container(
      height: 350,
      width: 250,
      margin: EdgeInsets.only(
        top: 80,
        left: 20
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover, // resize the image to the container and do not cut it.
          image: AssetImage(this.pathImage)
        ),
        borderRadius: BorderRadius.all(Radius.circular(10)), // circular borders
        shape: BoxShape.rectangle,
        boxShadow: [
          BoxShadow(
            color: Colors.black38,
            blurRadius: 15,
            offset: Offset(0.0,7.0)
          )
        ]
      ),
    );

    return Stack(
      alignment: Alignment(0.9,1.1), // alignment the floating button and the card
      children: [
        card,
        FloatingActionButtonGreen()
      ],
    );
  }

}