import 'package:flutter/material.dart';
import 'package:usa_app/helper/coustom_button.dart';
import 'package:usa_app/utill/all_color.dart';

class AdminHomePage extends StatefulWidget {
  const AdminHomePage({Key? key}) : super(key: key);

  @override
  _AdminHomePageState createState() => _AdminHomePageState();
}

class _AdminHomePageState extends State<AdminHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appBarColor,
        centerTitle: true,
        title: Text('Admin Home'),
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          InkWell(
            onTap: (){

            },
              child: CoustomButton(buttonHight: 50, buttonWidth: 250, btnTextColor: AllColors.appColor, buttonText: "buttonText")),
          SizedBox(height: 20,),
          Container(
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                Row(
                  children: [

                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
