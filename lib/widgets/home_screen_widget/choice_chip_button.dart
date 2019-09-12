import 'package:flutter/material.dart';

class ChoiceChipButton extends StatefulWidget {
  ChoiceChipButton(this.icon, this.text, this.isSelected);
  IconData icon;
  String text;
  bool isSelected;
  _ChoiceChipButtonState createState() => _ChoiceChipButtonState(icon, text, isSelected);
}

class _ChoiceChipButtonState extends State<ChoiceChipButton> {
  _ChoiceChipButtonState(this.icon, this.text, this.isSelected);
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
