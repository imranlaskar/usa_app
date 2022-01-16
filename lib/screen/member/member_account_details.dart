import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usa_app/helper/coustom_container.dart';
import 'package:usa_app/utill/all_color.dart';

class MemberAccountDetails extends StatefulWidget {
  const MemberAccountDetails({Key? key}) : super(key: key);

  @override
  _MemberAccountDetailsState createState() => _MemberAccountDetailsState();
}

class _MemberAccountDetailsState extends State<MemberAccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
        title: Text("Member Account Details"),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Text("Member Name",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold
              ),),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CoustomContainer(containerText: "January",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "Fabruary",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "March",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "April",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "May",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "June",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "July",)
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      CoustomContainer(containerText: "",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "",),
                      SizedBox(height: 10,),
                      CoustomContainer(containerText: "",),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
