import 'package:flutter/material.dart';
import 'package:usa_app/helper/coustom_button.dart';
import 'package:usa_app/helper/coustom_textformfield.dart';
import 'package:usa_app/utill/all_color.dart';

class DataUpdate extends StatefulWidget {
  const DataUpdate({Key? key}) : super(key: key);

  @override
  _DataUpdateState createState() => _DataUpdateState();
}

class _DataUpdateState extends State<DataUpdate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 40,),
          DropdownButton(
            hint: Text("Select Member",
              style: TextStyle(
                color: Colors.black
              ),),
            items: memberList.map(
                    (val) => DropdownMenuItem(
                    value: val,
                    child: Text(val)
                )
            ).toList(),
            onChanged: (newValMember){
              setState(() {
                initValMember=newValMember.toString();
              });
            },
            value: initValMember,
          ),
          SizedBox(height: 20,),
          Container(
            height: 38,
            decoration: BoxDecoration(
                color: Colors.white,
                border: Border(

                ),
                borderRadius: BorderRadius.circular(5)
            ),
            child: DropdownButton(
              iconDisabledColor: Colors.black,
              iconEnabledColor: Colors.black,
              hint: Text("Select Month",
                style: TextStyle(color: Colors.black),),
              items: monthList.map(
                      (val) => DropdownMenuItem(
                      value: val,
                      child: Text(val,
                      )
                  )
              ).toList(),

              onChanged: (newVal){
                setState(() {
                  initValMonth=newVal.toString();
                });
              },
              value: initValMonth,
            ),
          ),
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.only(left: 28.0,right: 28),
            child: CoustomTextFormField(
                labelText: "Value",
                hintText: "Enter Value",
                obdcureValue: false,
                editingController: _valueController
            ),
          ),
          SizedBox(height: 20,),
          InkWell(
              onTap: (){

              },
              child: CoustomButton(
                  buttonHight: 50,
                  buttonWidth: 250,
                  btnTextColor: AllColors.appColor,
                  buttonText: "Update"
              )
          ),
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
TextEditingController _valueController = TextEditingController();
String? initValMember;
String? initValMonth;
List<String> memberList = [
  "Jahid",
  "Emon",
  "Sahin",
  "Imran",
  "Robiul",
  "Aminul",
];
List<String> monthList = [
  "New Year",
  "January",
  "Fubruary",
  "March",
  "Bangla New Year",
  "April",
  "Eid-ul-Fitor",
];