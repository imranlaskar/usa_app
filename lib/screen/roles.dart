import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usa_app/utill/all_color.dart';

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
          backgroundColor: AllColors.appBarColor,
          centerTitle: true,
          title: Text("নিয়মাবলী"),
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
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text("নিয়মাবলী",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white
                    ),),
              ],
        ),
            ),
          ),
      )
    );
  }
}
