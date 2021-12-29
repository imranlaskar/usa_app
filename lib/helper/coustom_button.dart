import 'package:flutter/material.dart';
import 'package:usa_app/utill/all_color.dart';

class CoustomButton extends StatefulWidget {
  double buttonHight;
  double buttonWidth;
  Color btnTextColor;
  String buttonText;
  CoustomButton({Key? key,
  required this.buttonHight,
  required this.buttonWidth,
  required this.btnTextColor,
  required this.buttonText,
  }) : super(key: key);

  @override
  _CoustomButtonState createState() => _CoustomButtonState();
}

class _CoustomButtonState extends State<CoustomButton> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 28.0,right: 28),
      child: Container(
        height: widget.buttonHight,
        width: widget.buttonWidth,
        color: AllColors.appColor,
        child: Text(widget.buttonText,
        style: TextStyle(
          fontSize: 18,
          color: widget.btnTextColor
        ),
        ),
      ),
    );
  }
}
