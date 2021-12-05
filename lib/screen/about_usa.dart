import 'package:flutter/material.dart';

class AboutUSA extends StatefulWidget {
  const AboutUSA({Key? key}) : super(key: key);

  @override
  _AboutUSAState createState() => _AboutUSAState();
}

class _AboutUSAState extends State<AboutUSA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("সমিতি সম্পর্কে"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("Assets/images/back.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: Column(
          children: [
            Text("About USA")
          ],
        ),
      ),
    );
  }
}
