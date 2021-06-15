import 'package:flutter/material.dart';
import 'package:trips_app_flutter/review_list.dart';
import 'description_place.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  final String descriptionDummy = 'Lorem ipsum dolor sit amet consectetur adipiscing '
      'elit congue consequat orci fusce pretium sem, duis ultricies neque vel '
      'pellentesque magnis tincidunt viverra volutpat urna luctus justo. Iaculis '
      'per ligula suspendisse lacus commodo gravida ultrices vestibulum odio nunc velit, '
      'condimentum vel volutpat nam ante quis eros hendrerit enim dis.';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo', // title of the task manager
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
          appBar: AppBar(title: Text('Hola Mundo!'),),
          //body: new DescriptionPlace('Bahamas',4, descriptionDummy)
        body: ReviewList(),
      )
    );
  }
}

