import 'package:flutter/material.dart';
import 'package:usa_app/utill/all_color.dart';

class NoticeViewPage extends StatefulWidget {
  const NoticeViewPage({Key? key}) : super(key: key);

  @override
  _NoticeViewPageState createState() => _NoticeViewPageState();
}

class _NoticeViewPageState extends State<NoticeViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
      ),
    );
  }
}
