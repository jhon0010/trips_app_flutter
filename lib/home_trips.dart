import 'package:flutter/material.dart';
import 'package:trips_app_flutter/description_place.dart';
import 'package:trips_app_flutter/header_app_bar.dart';
import 'package:trips_app_flutter/review_list.dart';

class HomeTrips extends StatelessWidget {

  final String descriptionDummy = 'Lorem ipsum dolor sit amet consectetur adipiscing '
      'elit congue consequat orci fusce pretium sem, duis ultricies neque vel '
      'pellentesque magnis tincidunt viverra volutpat urna luctus justo. Iaculis '
      'per ligula suspendisse lacus commodo gravida ultrices vestibulum odio nunc velit, '
      'condimentum vel volutpat nam ante quis eros hendrerit enim dis.'
      ''
      'Lorem ipsum dolor sit amet consectetur adipiscing '
      'elit congue consequat orci fusce pretium sem, duis ultricies neque vel '
      'pellentesque magnis tincidunt viverra volutpat urna luctus justo. Iaculis '
      'per ligula suspendisse lacus commodo gravida ultrices vestibulum odio nunc velit, '
      'condimentum vel volutpat nam ante quis eros hendrerit enim dis.';

  @override
  Widget build(BuildContext context) {

    return Stack(
      children: [
        ListView( // separate the description and review list from the gradient part of the application
          children: [
            DescriptionPlace('Bahamas', 4, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    );
  }

}