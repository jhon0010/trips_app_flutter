import 'package:flutter/material.dart';
import 'package:trips_app_flutter/review.dart';

class ReviewList extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Review('assets/img/person.jpg', 'Peter','1 Review 2 Photos' , 'Not good'),
        Review('assets/img/girl.jpg', 'Anna ','20 Review 100 Photos' , 'I love it!')
      ],
    );
  }

}