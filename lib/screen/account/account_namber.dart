import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:usa_app/utill/all_color.dart';

class AccountDetails extends StatefulWidget {
  const AccountDetails({Key? key}) : super(key: key);

  @override
  _AccountDetailsState createState() => _AccountDetailsState();
}

class _AccountDetailsState extends State<AccountDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AllColors.appBarColor,
        title: Text("গুরুত্বপূর্ণ সম্বর সমূহ"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.jpg"),
          )
        ),
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("লেনদেন করার জন্য",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),),
            SizedBox(height: 10,),
            Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                    height: 50,
                      width: 50,
                      child: Image.asset("assets/acc_img/BKash.png")),
                  SizedBox(width: 15,),
                  Text("01635612464",
                    style: TextStyle(
                      fontSize: 30
                    ),)
                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/acc_img/DBBL.jpg")),
                  SizedBox(width: 15,),
                  Text("01635612464-6",
                    style: TextStyle(
                        fontSize: 30
                    ),),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Container(
              height: 60,
              width: 320,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                children: [
                  SizedBox(width: 15,),
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset("assets/acc_img/DBBLbank.jpg")),
                  SizedBox(width: 15,),
                  Text("7017510410489",
                    style: TextStyle(
                        fontSize: 30
                    ),),

                ],
              ),
            ),
            SizedBox(height: 10,),
            Text(""),

          ],
        ),
      ),

    );
  }
}
