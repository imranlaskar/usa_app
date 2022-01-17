import 'package:flutter/material.dart';
import 'package:usa_app/utill/all_color.dart';

class CoustomTextFormField extends StatefulWidget {
  bool obdcureValue;
  TextEditingController editingController;
  String labelText;
  String hintText;
  CoustomTextFormField({Key? key,
    required this.labelText,
    required this.hintText,
    required this.obdcureValue,
    required this.editingController
  }) : super(key: key);

  @override
  _CoustomTextFormFieldState createState() => _CoustomTextFormFieldState();
}

class _CoustomTextFormFieldState extends State<CoustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8.0,right: 8),
      child: TextFormField(
        validator: (value){
          if(value==null || value!.isEmpty){
            return "This field can not be empty";
          }
        },
        cursorColor: AllColors.appColor,
        decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: AllColors.appColor
            ),
            borderRadius: BorderRadius.circular(15),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              color: AllColors.appColor
            )
          ),
          labelText: widget.labelText,
          labelStyle: TextStyle(
            color: AllColors.appColor
          ),
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: AllColors.appColor
          ),
        ),
      ),
    );
  }
}
