import 'package:flight_list_ui/models/flight_item.dart';
import 'package:flight_list_ui/screens/flight_listing_screen/widgets/flight_item_card.dart';
import 'package:flutter/material.dart';

class FlightListingBottomPart extends StatelessWidget {
  FlightListingBottomPart(this.flights);
  List<FlightItem> flights;
  List<FlightItemCard> flightItemCards;

  @override
  Widget build(BuildContext context) {
    flightItemCards = _flightItemCards(flights);
    return Padding(
      padding: EdgeInsets.only(left: 10, right: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              "Best deals for Next 6 Months",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListView(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              children: flightItemCards),
        ],
      ),
    );
  }
}

List<FlightItemCard> _flightItemCards(List<FlightItem> flights) {
  var items = new List<FlightItemCard>();
  for (var item in flights) {
    items.add(new FlightItemCard(item));
  }
  return items;
}
