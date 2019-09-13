import 'package:flight_list_ui/screens/flight_listing_screen/flight_listing_bottom.dart';
import 'package:flutter/material.dart';

import 'flight_listing_top.dart';

final Color discountBackgroundColor = Color(0xFFFFE08D);
final Color flightBorderColor = Color(0xFFFFE08D);
final Color chipBackgroundColor = Color(0xFFFFE08D);

class FlightListingScreen extends StatelessWidget {
  const FlightListingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Search Result",
          ),
          centerTitle: true,
          leading: InkWell(
            child: Icon(Icons.arrow_back),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),
        body: Container(
          child: Column(
            children: <Widget>[FlightListTopPart(), FlightListingBottomPart()],
          ),
        ));
  }
}
