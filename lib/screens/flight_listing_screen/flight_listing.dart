import 'package:flight_list_ui/business_widgets/custome_shape_clipper.dart';
import 'package:flight_list_ui/models/flight_item.dart';
import 'package:flight_list_ui/screens/flight_listing_screen/flight_listing_bottom.dart';
import 'package:flight_list_ui/screens/flight_listing_screen/widgets/flight_item_card.dart';
import 'package:flight_list_ui/screens/flight_listing_screen/widgets/flight_list_appbar.dart';
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
        body: CustomScrollView(slivers: <Widget>[
      SliverAppBar(
        title: Container(
          child: Row(
            children: <Widget>[
              Text(
                "Flight List",
              ),
            ],
          ),
        ),
        pinned: false,
        snap: false,
        floating: true,
        expandedHeight: 210.0,
        flexibleSpace: FlexibleSpaceBar(
          background: FlightListAppbar(),
        ),
      ),
      SliverList(
        delegate: SliverChildListDelegate(fetchLightItemCard()),
      )
    ]));
  }
}

List<FlightItemCard> fetchLightItemCard() {
  List<FlightItemCard> items = new List<FlightItemCard>();
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  items.add(FlightItemCard(new FlightItem(
      "1",
      "1",
      "Da Nang",
      "Sep, 2019",
      30,
      350,
      240,
      "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg",
      4.5,
      "Vietnam Airline")));
  return items;
}
