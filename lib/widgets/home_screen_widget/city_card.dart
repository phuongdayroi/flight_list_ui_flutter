import 'package:flight_list_ui/models/city_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_money_formatter/flutter_money_formatter.dart';

class CityCard extends StatelessWidget {
  CityCard(this.cityItem);
  CityItem cityItem;

  FlutterMoneyFormatter currencyFormat(double amount, String symbol,
          String decimalSeparator, String thousanSeparator) =>
      new FlutterMoneyFormatter(
          amount: amount,
          settings: MoneyFormatterSettings(
              thousandSeparator: thousanSeparator,
              decimalSeparator: decimalSeparator,
              symbol: symbol));
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(3),
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(10)),
              child: Stack(
                children: <Widget>[
                  Container(
                      width: 120,
                      height: 200,
                      child: CachedNetworkImage(
                          imageUrl: cityItem.imagePath,
                          imageBuilder: (context, imageProvider) => Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: imageProvider, fit: BoxFit.cover),
                                ),
                              ))),
                  Positioned(
                    left: 5,
                    bottom: 10,
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 65,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                cityItem.name,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                    fontSize: 16),
                              ),
                              Text(
                                cityItem.date,
                                style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                    fontSize: 14),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              shape: BoxShape.rectangle,
                              color: Colors.white.withOpacity(0.8),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          padding: EdgeInsets.all(4),
                          child: Text('${cityItem.discount}%',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 12,
                              )),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                Text(
                  '${currencyFormat(cityItem.newPrice, "\$", ".", ",").output.symbolOnLeft}',
                  style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '(${currencyFormat(cityItem.oldPrice, "\$", ".", ",").output.symbolOnLeft})',
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.grey,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
