import 'package:flutter/material.dart';

class ChoiceChip extends StatefulWidget {
  ChoiceChip({this.icon, this.text});
  IconData icon;
  String text;
  _ChoiceChipState createState() => _ChoiceChipState(icon, text);
}

class _ChoiceChipState extends State<ChoiceChip> {
  _ChoiceChipState(this.icon, this.text);
  IconData icon;
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(this.icon),
          SizedBox(
            width: 4,
          ),
          Text(this.text),
        ],
      ),
    );
  }
}
