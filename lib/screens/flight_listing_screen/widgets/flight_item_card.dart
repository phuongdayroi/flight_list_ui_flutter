import 'package:flight_list_ui/helpers/convert_currency.dart';
import 'package:flight_list_ui/models/flight_item.dart';
import 'package:flutter/material.dart';

class FlightItemCard extends StatelessWidget {
  FlightItemCard(this.flightItem);
  FlightItem flightItem;
  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[
      Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(16),
          height: 100,
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(16)),
              border: Border.all(color: Colors.blueAccent)),
          child: Row(
            children: <Widget>[
              Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        '${currencyFormat(flightItem.newPrice, "\$", ".", ",").output.symbolOnLeft}',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        '(${currencyFormat(flightItem.oldPrice, "\$", ".", ",").output.symbolOnLeft})',
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black45,
                            decoration: TextDecoration.lineThrough),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: <Widget>[
                      InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.05),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.date_range,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text('${flightItem.date}')
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.05),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.location_city,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '${flightItem.name}',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          )),
                      SizedBox(
                        width: 10,
                      ),
                      InkWell(
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.black.withOpacity(0.05),
                                borderRadius:
                                    BorderRadius.all(Radius.circular(4))),
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  size: 16,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text(
                                  '${flightItem.rate}',
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          )),
                    ],
                  )
                ],
              ),
            ],
          )),
      Positioned(
        top: 20,
        right: 5,
        child: Container(
          padding: EdgeInsets.all(6),
          child: Text('${flightItem.discount} %', style: TextStyle(fontSize: 14,color: Colors.white),),
          decoration: BoxDecoration(
              color: Colors.redAccent,
              borderRadius: BorderRadius.all(Radius.circular(4))),
        ),
      )
    ]);
  }
}
