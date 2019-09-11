import 'package:flight_list_ui/widgets/custome_shape_clipper.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  String title;

  HomeScreen({
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        children: <Widget>[HomeScreenTopContainer()],
      ),
    );
  }
}

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

List<String> locations = ['Da Nang (DN)', 'Hue (H)', 'Ha Noi (HN)'];

TextStyle dropDownSelectedItemLabelStyle =
    TextStyle(color: Colors.white, fontSize: 16);
TextStyle dropDownItemLabelStyle = TextStyle(color: Colors.red, fontSize: 16);

class _HomeScreenTopContainerState extends State<HomeScreenTopContainer> {
  var selectedLocationIndex = 0;
  var searchLocationController = TextEditingController();

  bool isflightSelected = false;
  @override
  Widget build(BuildContext context) {
    searchLocationController.text = locations[0];
    // TODO: implement build
    return Stack(children: <Widget>[
      ClipPath(
          clipper: CustomeShapeClipper(),
          child: Container(
            height: 400,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [Colors.red, Colors.orange])),
          )),
      Column(
        children: <Widget>[
          SizedBox(
            height: 50,
          ),
          Row(
            children: <Widget>[
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
                    locations[0],
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
                cursorColor: thirdColor,
                decoration: InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 32, vertical: 14),
                    border: InputBorder.none,
                    suffix: Material(
                        elevation: 2,
                        borderRadius: BorderRadius.all((Radius.circular(30))),
                        child: Container(
                          child: Icon(
                            Icons.search,
                            color: Colors.blue,
                          ),
                        ))),
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
                child: ChoiceChip(
                    Icons.flight_takeoff, "Flights", this.isflightSelected),
              ),
              SizedBox(
                width: 20,
              ),
              InkWell(
                child:
                    ChoiceChip(Icons.hotel, "Hotels", !this.isflightSelected),
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

class ChoiceChip extends StatefulWidget {
  ChoiceChip(this.icon, this.text, this.isSelected);
  IconData icon;
  String text;
  bool isSelected;
  _ChoiceChipState createState() => _ChoiceChipState(icon, text, isSelected);
}

class _ChoiceChipState extends State<ChoiceChip> {
  _ChoiceChipState(this.icon, this.text, this.isSelected);
  IconData icon;
  String text;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color:
              widget.isSelected == true ? Colors.white.withOpacity(0.15) : null,
          borderRadius: BorderRadius.all(Radius.circular(20))),
      padding: EdgeInsets.symmetric(horizontal: 15, vertical: 8),
      child: Row(
        children: <Widget>[
          Icon(
            widget.icon,
            color: Colors.white,
          ),
          SizedBox(
            width: 4,
          ),
          Text(
            widget.text,
            style: TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
