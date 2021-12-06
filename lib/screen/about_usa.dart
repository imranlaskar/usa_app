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
      body:
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/back.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black,
                  BlendMode.dstATop)
          ),
        ),
        child: Column(
          children: [
            Text("নিয়মাবলী"),
          ],
        ),
      ),
    );
  }
}
