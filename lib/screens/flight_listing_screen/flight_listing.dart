import 'package:flight_list_ui/models/flight_item.dart';
import 'package:flight_list_ui/screens/flight_listing_screen/flight_listing_bottom.dart';
import 'package:flight_list_ui/screens/flight_listing_screen/widgets/flight_item_card.dart';
import 'package:flutter/material.dart';

import 'flight_listing_top.dart';

final Color discountBackgroundColor = Color(0xFFFFE08D);
final Color flightBorderColor = Color(0xFFFFE08D);
final Color chipBackgroundColor = Color(0xFFFFE08D);

class FlightListingScreen extends StatelessWidget {
  FlightListingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flight List"),
          backgroundColor: Colors.blueAccent,
          actions: <Widget>[],
        ),
        body: SingleChildScrollView(
            child: Column(
          children: <Widget>[
            FlightListTopPart(),
            FlightListingBottomPart(fetchLightItems())
          ],
        )));
  }
}

List<FlightItem> fetchLightItems() {
  List<FlightItem> items = new List<FlightItem>();
  for (var i = 0; i <= 20; i++)
    items.add(new FlightItem(
        "$i",
        "$i",
        "Da Nang",
        "Sep, 2019",
        30,
        350,
        240,
        "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
        4.5,
        "Vietnam Airline"));

  return items;
}
