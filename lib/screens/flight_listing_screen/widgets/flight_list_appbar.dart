import 'package:flight_list_ui/business_widgets/custome_shape_clipper.dart';
import 'package:flutter/material.dart';

class FlightListAppbar extends StatelessWidget {

  const FlightListAppbar();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: CustomeShapeClipper(),
          child: Container(
            height: 200,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.deepPurple, Colors.blueAccent])),
          ),
        ),
        Column(
          children: <Widget>[
            SizedBox(
              height: 25,
            ),
            Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              elevation: 10,
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "Da Nang",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.normal),
                            ),
                            Divider(
                              color: Colors.grey,
                              height: 20,
                            ),
                            Text(
                              "Da Nang",
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Spacer(),
                      InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: EdgeInsets.all(10),
                            child: Icon(
                              Icons.import_export,
                              color: Colors.blueAccent,
                              size: 32,
                            ),
                          ))
                      // Expanded(
                      //   flex: 1,
                      //   child: Icon(
                      //     Icons.import_export,
                      //     color: Colors.blue,
                      //     size: 32,
                      //   ),
                      // )
                    ],
                  )),
            )
          ],
        )
      ],
    );
  }
}
