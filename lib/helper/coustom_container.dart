import 'package:flutter/material.dart';
import 'package:usa_app/utill/all_color.dart';

class CoustomContainer extends StatefulWidget {
  String containerText;
   CoustomContainer({Key? key, required this.containerText}) : super(key: key);

  @override
  _CoustomContainerState createState() => _CoustomContainerState();
}

class _CoustomContainerState extends State<CoustomContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(
            color: AllColors.appColor
        ),
      ),
      child: Center(
        child: Text(widget.containerText,
          style: TextStyle(
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
