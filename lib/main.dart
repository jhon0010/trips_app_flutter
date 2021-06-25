import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:generic_bloc_provider/generic_bloc_provider.dart';
import 'package:trips_app_flutter/navigation_bar_trips_cupertino.dart';
import 'package:trips_app_flutter/user/bloc/bloc_user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays([]); // remove the android status bar color
    return BlocProvider(
      child: MaterialApp(
          title: 'Flutter Demo', // title of the task manager
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          home: NavigationBarTripsCupertino()
      ),
      bloc: UserBloc(), // All methos of userBloc can be accessed by MaterialApp
    );
  }
}

