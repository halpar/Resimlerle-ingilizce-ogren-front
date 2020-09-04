import 'package:flutter/material.dart';
import 'screens/login/index.dart';
import 'screens/select/index.dart';

class Routes {
  final routes = <String, WidgetBuilder>{
    '/Login': (BuildContext context) => new LoginPage(),
    '/Select': (BuildContext context) => new SelectPage(),
  };

  Routes() {
    runApp(new MaterialApp(
      title: 'English For Kidz',
      routes: routes,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: 'RobotoMedium',
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        primaryColor: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      home: LoginPage(
        title: 'Flutter Demo Home Page',
      ),
    ));
  }
}
