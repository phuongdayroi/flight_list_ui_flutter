import 'package:flight_list_ui/screens/home_screen/widgets/CustomAppBottomBar.dart';
import 'package:flutter/material.dart';

import 'home_screen_bottom_container.dart';
import 'home_screen_top_container.dart';

class HomeScreen extends StatelessWidget {
  String title;

  HomeScreen({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        bottomNavigationBar: CustomAppBottomBar(),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            HomeScreenTopContainer(),
            HomeScreenBottomContainer(),
            HomeScreenBottomContainer()
          ],
        )));
  }
}
