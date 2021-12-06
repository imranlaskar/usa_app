import 'package:flutter/material.dart';
import 'package:usa_app/screen/member/member_details.dart';

class MemberList extends StatefulWidget {
  const MemberList({Key? key}) : super(key: key);

  @override
  _MemberListState createState() => _MemberListState();
}

class _MemberListState extends State<MemberList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("সদস্যদের তালিকা"),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/back.jpg"),
            fit: BoxFit.cover
          )
        ),
        child: GridView.count(
          crossAxisCount: 3,
          childAspectRatio: 1,
          children: memberImageList.map((e){
            return Padding(
              padding: const EdgeInsets.all(4.0),
              child: InkWell(
                child: Container(
                    height: containerHeight,
                    width: containerWidth,
                    child: Image.asset(e,fit: BoxFit.cover,)),
                onTap: (){
                  setState(() {

                  });
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

double containerHeight =  140;
double containerWidth =  100;

List<String> memberImageList = [
  "assets/images/sahin.jpg",
  "assets/images/Robiul.jpg",
  "assets/images/Aminul.jpg",
  "assets/images/Alom.jpg",
  "assets/images/Imran.jpg",
  "assets/images/Belal.jpg",
  "assets/images/Saidul.jpg",
  "assets/images/Torikul.jpg",
  "assets/images/Romjan.jpg",
  "assets/images/Tanvir.jpg",
  "assets/images/Imran.jpg",
  "assets/images/Imran.jpg",
  "assets/images/Kamal.jpg",
  "assets/images/Tarek.jpg",
  "assets/images/Salauddin.jpg",
  "assets/images/Nahid.jpg",
  "assets/images/Anu.jpg",
];