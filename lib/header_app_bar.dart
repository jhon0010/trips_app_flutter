import 'package:flutter/material.dart';
import 'package:trips_app_flutter/card_image_list.dart';
import 'package:trips_app_flutter/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack('Welcome'),
        CardImageList()
      ],
    );
  }


}