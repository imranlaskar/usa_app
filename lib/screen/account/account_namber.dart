import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
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
        width: MediaQuery.of(context).size.width,
        color: Colors.grey.shade300,
        child: Column(
          children: [
            SizedBox(height: 20,),
            Text("লেনদেন করার জন্য",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
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
            SizedBox(height: 30,),
            Text("যে কোনো প্রয়োজনে যোগাযোগ করতে",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black
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
                  SizedBox(width: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Emon Hawlader",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                      SizedBox(height: 5,),
                      Text("01953851914",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: ()async{
                      FlutterPhoneDirectCaller.callNumber(_number1);
                    },
                    child: Container(
                      color: Colors.red,
                      height: 35,
                      width: 100,
                      child: Row(
                        children: [
                          SizedBox(width: 8,),
                          Icon(Icons.call,size: 20,color: Colors.white,),
                          SizedBox(width: 8,),
                          Text("Call Now",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white
                            ),
                          ),
                          SizedBox(width: 8,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
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
                  SizedBox(width: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Imran Laskar",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                      SizedBox(height: 5,),
                      Text("01635612464",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: ()async{
                      FlutterPhoneDirectCaller.callNumber(_number2);
                    },
                    child: Container(
                      color: Colors.red,
                      height: 35,
                      width: 100,
                      child: Row(
                        children: [
                          SizedBox(width: 8,),
                          Icon(Icons.call,size: 20,color: Colors.white,),
                          SizedBox(width: 8,),
                          Text("Call Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(width: 8,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
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
                  SizedBox(width: 30,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Imran Laskar",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                      SizedBox(height: 5,),
                      Text("01938961103",
                        style: TextStyle(
                            fontSize: 20
                        ),),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: ()async{
                      FlutterPhoneDirectCaller.callNumber(_number3);
                    },
                    child: Container(
                      color: Colors.red,
                      height: 35,
                      width: 100,
                      child: Row(
                        children: [
                          SizedBox(width: 8,),
                          Icon(Icons.call,size: 20,color: Colors.white,),
                          SizedBox(width: 8,),
                          Text("Call Now",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white
                            ),
                          ),
                          SizedBox(width: 8,),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 20,)
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
String _number1 = "+8801953851914";
String _number2 = "+8801635612464";
String _number3 = "+8801938961103";
