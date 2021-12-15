import 'package:flutter/material.dart';
import 'package:usa_app/utill/all_size.dart';

class MainAuthority extends StatefulWidget {
  String img,name, fatherName, memberNo, admitionDate, address;

  MainAuthority({Key? key,required this.img, required this.name, required this.fatherName,
  required this.memberNo, required this.admitionDate, required this.address}) : super(key: key);

  @override
  _MainAuthorityState createState() => _MainAuthorityState();
}

class _MainAuthorityState extends State<MainAuthority> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("সদস্যদের বিবরন"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
              children: [
                Container(
                    height: 200,
                    width: 180,
                    child: Image.asset(widget.img)
                ),
                SizedBox(height: 8,),
                Text("নাম : ${widget.name}",
                  style: TextStyle(
                      fontSize: AllSize.textSize25,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple
                  ),),
                SizedBox(height: 8,),
                Text("বাবার নাম : ${widget.fatherName}",
                  style: TextStyle(
                      fontSize: AllSize.textSize20
                  ),),
                SizedBox(height: 8,),
                Text("সদস্য নম্বর : ${widget.memberNo}",
                  style: TextStyle(
                      fontSize: AllSize.textSize20
                  ),),
                SizedBox(height: 8,),
                Text("ভর্তির তারিখ : ${widget.admitionDate}",
                  style: TextStyle(
                      fontSize: AllSize.textSize20
                  ),),
                SizedBox(height: 8,),
                Text("ঠিকানা : ${widget.address}",
                  style: TextStyle(
                      fontSize: AllSize.textSize20
                  ),),
                Text("গোপালগঞ্জ",
                  style: TextStyle(
                      fontSize: AllSize.textSize20
                  ),),
              ],
            ),
          ),
        ),
      );
  }
}
