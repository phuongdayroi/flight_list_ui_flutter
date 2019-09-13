import 'package:flight_list_ui/models/flight_item.dart';
import 'package:flight_list_ui/screens/flight_listing_screen/widgets/flight_item_card.dart';
import 'package:flutter/material.dart';

class FlightListingBottomPart extends StatelessWidget {
  const FlightListingBottomPart({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: FlightItemCard(new FlightItem("1", "1", "Da Nang", "Sep, 2019", 30, 350, 240, "https://www.muabannhadat.vn/tin-tuc/wp-content/uploads/2017/10/can-ho-khach-san-da-nang-ngay-cang-soi-dong.jpg", 4.5, "Vietnam Airline"))
    );
  }
}
