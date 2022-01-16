import 'package:flutter/material.dart';
import 'package:usa_app/helper/coustom_button.dart';
import 'package:usa_app/helper/coustom_textformfield.dart';
import 'package:usa_app/screen/member/member_account_details.dart';
import 'package:usa_app/utill/all_color.dart';

class MemberLoginPage extends StatefulWidget {
  const MemberLoginPage({Key? key}) : super(key: key);

  @override
  _MemberLoginPageState createState() => _MemberLoginPageState();
}

class _MemberLoginPageState extends State<MemberLoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          Container(
            height: 180,
            width: 180,
            child:  Image.asset("assets/images/NewUSA.jpg"),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15),
            child: CoustomTextFormField(
                labelText: "Phone",
                hintText: "Enter Phone Number",
                obdcureValue: false,
                editingController: _phoneController
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 15.0,right: 15),
            child: CoustomTextFormField(
                labelText: "Password",
                hintText: "Enter Password",
                obdcureValue: true,
                editingController: _memberPassController),
          ),
          SizedBox(height: 20,),
          InkWell(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(
                      builder: (context)=>MemberAccountDetails()));
            },
            child: CoustomButton(
                buttonHight: 50,
                buttonWidth: 250,
                btnTextColor: AllColors.textColorWhite,
                buttonText: "LogIn"),
          )
        ],
      ),
    );
  }
}
TextEditingController _phoneController=TextEditingController();
TextEditingController _memberPassController=TextEditingController();