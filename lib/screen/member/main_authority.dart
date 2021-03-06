import 'package:flutter/material.dart';
import 'package:usa_app/helper/coustom_button.dart';
import 'package:usa_app/screen/member/member_account_details.dart';
import 'package:usa_app/screen/member/member_login.dart';
import 'package:usa_app/utill/all_color.dart';
import 'package:usa_app/utill/all_size.dart';

class MainAuthority extends StatefulWidget {
  String img,name, fatherName, memberNo,phoneNo, admitionDate, address;

  MainAuthority({Key? key,required this.img, required this.name, required this.fatherName,
  required this.memberNo,required this.phoneNo, required this.admitionDate, required this.address}) : super(key: key);

  @override
  _MainAuthorityState createState() => _MainAuthorityState();
}

class _MainAuthorityState extends State<MainAuthority> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appBarColor,
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
                Text("ফোন নম্বর : ${widget.phoneNo}",
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
                SizedBox(height: 30,),
                InkWell(
                  onTap: (){
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context)=>MemberLoginPage()));
                  },
                  child: CoustomButton(
                      buttonHight: 50,
                      buttonWidth: 250,
                      btnTextColor: AllColors.textColorWhite,
                      buttonText: "buttonText"),
                )
              ],
            ),
          ),
        ),
      );
  }
}
