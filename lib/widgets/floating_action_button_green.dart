import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {

  bool isPressed = false;

  void onPressedFav(){
    setState(() { // Notify the framework that the internal state of this object has changed.
      this.isPressed = !this.isPressed;
    });

    Scaffold.of(context).showSnackBar(
        SnackBar(content: Text('Add to favorites ${this.isPressed}'))
    );
  }

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: 'Fav',
      child: Icon(
          this.isPressed ? Icons.favorite : Icons.favorite_border
      ),
      onPressed: onPressedFav,
    );
  }

}