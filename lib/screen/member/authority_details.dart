import 'package:flutter/material.dart';
import 'package:usa_app/model/member_list_model.dart';
import 'package:usa_app/utill/all_color.dart';
import 'package:usa_app/utill/all_size.dart';

class AuthorityDetails extends StatefulWidget {

  MemberListModel memberListModel;
  AuthorityDetails({Key? key,required this.memberListModel}) : super(key: key);

  @override
  _AuthorityDetailsState createState() => _AuthorityDetailsState();
}

class _AuthorityDetailsState extends State<AuthorityDetails> {
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
                child: Image.asset(widget.memberListModel.img)
            ),
              SizedBox(height: 8,),
              Text("নাম : ${widget.memberListModel.name}",
                style: TextStyle(
                  fontSize: AllSize.textSize25,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple
                ),),
              SizedBox(height: 8,),
              Text("বাবার নাম : ${widget.memberListModel.fatherName}",
                style: TextStyle(
                  fontSize: AllSize.textSize20
                ),),
              SizedBox(height: 8,),
              Text("সদস্য নম্বর : ${widget.memberListModel.mdmberNo}",
                style: TextStyle(
                    fontSize: AllSize.textSize20
                ),),
              SizedBox(height: 8,),
              Text("ভর্তির তারিখ : ${widget.memberListModel.admitionDate}",
                style: TextStyle(
                    fontSize: AllSize.textSize20
                ),),
              SizedBox(height: 8,),
              Text("ঠিকানা : ${widget.memberListModel.address} কোটালীপাড়া,",
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
