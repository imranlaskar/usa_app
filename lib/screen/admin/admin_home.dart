import 'package:flutter/material.dart';
import 'package:usa_app/helper/coustom_button.dart';
import 'package:usa_app/screen/admin/data_update.dart';
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
          SizedBox(height: 30,),
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>DataUpdate()));
            },
            child: CoustomButton(
                buttonHight: 50,
                buttonWidth: 250,
                btnTextColor: AllColors.appBarColor,
                buttonText: "Data Update"
            ),
          )
        ],
      ),
    );
  }
}