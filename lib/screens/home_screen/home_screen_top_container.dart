import 'package:flight_list_ui/business_widgets/custome_shape_clipper.dart';
import 'package:flight_list_ui/screens/flight_listing_screen/flight_listing.dart';
import 'package:flight_list_ui/screens/home_screen/widgets/choice_chip_button.dart';

import 'package:flutter/material.dart';

Color firstColor = Colors.redAccent;
Color secondColor = Colors.red;
Color thirdColor = Colors.orange;
Color fourthColor = Colors.orangeAccent;

class HomeScreenTopContainer extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeScreenTopContainerState();
  }
}

class _HomeScreenTopContainerState extends State<HomeScreenTopContainer> {
  List<String> locations = ['Da Nang', 'Hue', 'Ha Noi'];

  TextStyle dropDownSelectedItemLabelStyle =
      TextStyle(color: Colors.white, fontSize: 16);
  TextStyle dropDownItemLabelStyle =
      TextStyle(color: Colors.blueAccent, fontSize: 16);

  var selectedLocationIndex = 0;
  var searchLocationController = TextEditingController();
  String selectedPopupMenuItem;
  bool isflightSelected = false;
  @override
  Widget build(BuildContext context) {
    searchLocationController.text = locations[selectedLocationIndex];
    selectedPopupMenuItem = locations[selectedLocationIndex];

    // TODO: implement build
    return Stack(children: <Widget>[
      ClipPath(
          clipper: CustomeShapeClipper(),
          child: Container(
            height: 400,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.blueAccent])),
          )),
      Column(
        children: <Widget>[
          SizedBox(
            height: 30,
          ),
          Row(
            children: <Widget>[
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.location_on,
                color: Colors.white,
              ),
              SizedBox(
                height: 16,
              ),
              PopupMenuButton(
                onSelected: (index) {
                  setState(() {
                    selectedLocationIndex = index;
                    selectedPopupMenuItem = locations[selectedLocationIndex];
                    searchLocationController.text =
                        locations[selectedLocationIndex];
                  });
                },
                itemBuilder: (BuildContext context) => <PopupMenuItem<int>>[
                  PopupMenuItem(
                    child: Text(
                      locations[0],
                      style: dropDownItemLabelStyle,
                    ),
                    value: 0,
                  ),
                  PopupMenuItem(
                    child: Text(
                      locations[1],
                      style: dropDownItemLabelStyle,
                    ),
                    value: 1,
                  ),
                  PopupMenuItem(
                    child: Text(
                      locations[2],
                      style: dropDownItemLabelStyle,
                    ),
                    value: 2,
                  )
                ],
                child: Row(children: <Widget>[
                  Text(
                    selectedPopupMenuItem,
                    style: dropDownSelectedItemLabelStyle,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),
                ]),
              ),
              Spacer(),
              Icon(
                Icons.settings,
                color: Colors.white,
              ),
              SizedBox(
                width: 10,
              )
            ],
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Where would\nyou want to go ? ",
            style: TextStyle(fontSize: 26, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 32),
            child: Material(
              elevation: 5,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              child: TextField(
                style: TextStyle(color: Colors.black, fontSize: 18),
                controller: searchLocationController,
                cursorColor: Colors.black,
                decoration: InputDecoration(
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 32.0, vertical: 14.0),
                  suffixIcon: Material(
                    elevation: 2.0,
                    borderRadius: BorderRadius.all(
                      Radius.circular(30.0),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => FlightListingScreen()
                                // InheritedFlightListing(
                                //   child: FlightListingScreen(),
                                // )
                                ));
                      },
                      child: Icon(
                        Icons.search,
                        color: Colors.blueAccent,
                      ),
                    ),
                  ),
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              InkWell(
                onTap: () {
                  setState(() {
                    this.isflightSelected = true;
                  });
                },
                child: ChoiceChipButton(
                    Icons.flight_takeoff, "Flights", this.isflightSelected),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                child: ChoiceChipButton(
                    Icons.hotel, "Hotels", !this.isflightSelected),
                onTap: () {
                  setState(() {
                    this.isflightSelected = false;
                  });
                },
              ),
            ],
          )
        ],
      )
    ]);
  }
}
