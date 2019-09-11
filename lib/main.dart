import 'package:flight_list_ui/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: appTheme,
      debugShowCheckedModeBanner: false,
      home: HomeScreen(title: 'Flutter Demo Home Page'),
    );
  }
}

ThemeData appTheme =
    ThemeData(primaryColor: Color(0xFFF47D15), fontFamily: 'Oxygen');
