import 'package:flight_list_ui/models/city_item.dart';
import 'package:flight_list_ui/widgets/home_screen_widget/city_card.dart';
import 'package:flight_list_ui/widgets/home_screen_widget/custsomize_text.dart';
import 'package:flutter/material.dart';

class HomeScreenBottomContainer extends StatefulWidget {
  HomeScreenBottomContainer({Key key}) : super(key: key);

  _HomeScreenBottomContainerState createState() =>
      _HomeScreenBottomContainerState();
}

const viewAllStyle = TextStyle(fontSize: 14, color: Colors.deepOrange);
const viewAllStyleSelected = TextStyle(
    fontSize: 14, color: Colors.deepOrange, fontWeight: FontWeight.bold);

class _HomeScreenBottomContainerState extends State<HomeScreenBottomContainer> {
  bool viewAllSelected = false;
  static List<CityItem> cityItems = getCityItems();
  List<CityCard> cityCards;
  int itemCount = cityItems.length;

  @override
  Widget build(BuildContext context) {
    cityItems = getCityItems();
    cityCards = getCityCards(cityItems);
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(14),
          child: Row(
            children: <Widget>[
              Text(
                "Current Watched Items:",
                style: TextStyle(color: Colors.black, fontSize: 16),
              ),
              Spacer(),
              InkWell(
                child: viewSelectionText('VIEW ALL ($itemCount)',
                    Colors.deepOrange, viewAllSelected),
                onTap: () {
                  setState(() {
                    viewAllSelected = !viewAllSelected;
                  });
                },
              )
            ],
          ),
        ),
        Container(
          height: 250,
          child: ListView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.all(8),
              children: cityCards),
        )
      ],
    );
  }
}

List<CityCard> getCityCards(List<CityItem> cityItems) {
  var citys = new List<CityCard>();
  for (var item in cityItems) {
    citys.add(new CityCard(item));
  }
  return citys;
}

List<CityItem> getCityItems() {
  List<CityItem> citys = new List<CityItem>();
  citys.add(new CityItem("1", "1", "Ha Noi", "9/2019", 30.0, 150.0, 100,
      "https://cdn.pixabay.com/photo/2019/08/02/23/09/banff-4380804_960_720.jpg"));
  citys.add(new CityItem("2", "2", "Da Nang", "9/2019", 15, 250, 180,
      "https://cdn.pixabay.com/photo/2015/11/07/11/41/da-nang-1031403_960_720.jpg"));
  citys.add(new CityItem("3", "3", "Hoi An", "9/2019", 50, 300, 150,
      "https://cdn.pixabay.com/photo/2017/12/27/06/35/street-3042078_960_720.jpg"));
  citys.add(new CityItem("4", "4", "Hue", "9/2019", 20, 200, 260,
      "https://cdn.pixabay.com/photo/2016/03/04/12/03/vietnam-1235935_960_720.jpg"));
  return citys;
}
