import 'package:flutter/material.dart';

class CustomeAppbar extends StatelessWidget{
 
  List<BottomNavigationBarItem>     bottomBarItems = List<BottomNavigationBarItem>();

  CustomAppBar() {
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
