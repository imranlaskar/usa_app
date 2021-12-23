import 'package:flutter/material.dart';
import 'package:usa_app/utill/all_color.dart';

class MemberDetails extends StatefulWidget {
  const MemberDetails({Key? key}) : super(key: key);

  @override
  _MemberDetailsState createState() => _MemberDetailsState();
}

class _MemberDetailsState extends State<MemberDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appBarColor,
      ),
      body: Column(
        children: [
          Container(),
        ],
      ),
    );
  }
}
