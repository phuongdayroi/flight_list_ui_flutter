import 'package:flight_list_ui/screens/home_screen/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: appTheme,
        debugShowCheckedModeBanner: false,
        home: HomeScreen(title: 'Flutter Demo Home Page')
        // home: FlightListing()
        );
  }
}

ThemeData appTheme =
    ThemeData(primaryColor: Colors.blue, fontFamily: 'Oxygen');
class FlightApp with ChangeNotifier {
  
}