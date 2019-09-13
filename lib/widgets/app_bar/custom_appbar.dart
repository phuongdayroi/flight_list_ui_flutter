import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  List<BottomNavigationBarItem> bottomBarItems;

  CustomAppBar() {
    bottomBarItems = new List<BottomNavigationBarItem>();
    bottomBarItems.add(new BottomNavigationBarItem(
        icon: Icon(Icons.home),
        title: Text(
          "Explore",
          style: TextStyle(color: Colors.black),
        )));
    bottomBarItems.add(new BottomNavigationBarItem(
        icon: Icon(Icons.favorite),
        title: Text(
          "Watchlist",
          style: TextStyle(color: Colors.black),
        )));
    bottomBarItems.add(new BottomNavigationBarItem(
        icon: Icon(Icons.local_offer),
        title: Text(
          "Deals",
          style: TextStyle(color: Colors.black),
        )));
    bottomBarItems.add(new BottomNavigationBarItem(
        icon: Icon(Icons.notifications),
        title: Text(
          "Notifications",
          style: TextStyle(color: Colors.black),
        )));
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child: BottomNavigationBar(
        items: bottomBarItems,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
