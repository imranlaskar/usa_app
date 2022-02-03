import 'package:flutter/material.dart';
class AboutUs extends StatefulWidget {
  String screenText;
   AboutUs({Key? key,
   required this.screenText,
   }) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(widget.screenText),
      ),
    );
  }
}
