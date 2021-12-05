import 'package:flutter/material.dart';

class Rules extends StatefulWidget {
  const Rules({Key? key}) : super(key: key);

  @override
  _RulesState createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("নিয়মাবলী"),
        ),
        body: Container(
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
      )
    );
  }
}
