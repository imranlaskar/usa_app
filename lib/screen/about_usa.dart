import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usa_app/utill/all_color.dart';

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
        backgroundColor: AllColors.appBarColor,
        centerTitle: true,
        title: Text("সমিতি সম্পর্কে"),
      ),
      body:SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                color: AllColors.textBacgroundColor1,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor2,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor1,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor2,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor1,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor2,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor1,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor2,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor1,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor2,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor1,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
              Container(
                color: AllColors.textBacgroundColor2,
                width: MediaQuery.of(context).size.width,
                child: Text("",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
