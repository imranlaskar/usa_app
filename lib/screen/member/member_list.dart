import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usa_app/model/member_list_model.dart';
import 'package:usa_app/screen/member/authority_details.dart';
import 'package:usa_app/utill/all_size.dart';

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
        // height: MediaQuery.of(context).size.height,
        // width: MediaQuery.of(context).size.width,
        // decoration: BoxDecoration(
        //   image: DecorationImage(
        //     image: AssetImage("assets/images/back.jpg"),
        //     fit: BoxFit.cover
        //   )
        // ),
        child: Column(
          children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("সহ-সভাপতি",
                      style: TextStyle(
                          fontSize: AllSize.textSize18,
                          fontWeight: FontWeight.bold
                      ),),
                    InkWell(
                      child: Container(
                        height: 130,
                        width: 100,
                        child: Image.asset("assets/images/Jahid.jpg"),
                      ),
                      onTap: (){
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context)=>AuthorityDetails(
                                img: "assets/images/Jahid.jpg",
                                name: "মোঃ জাহিদ শিকদার",
                                fatherName: "মোঃ আইউব আলী শিকদার",
                                memberNo: "০১ (এক)",
                                admitionDate: "-/-/-",
                                address: "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ"
                            )));
                      },
                    ),
                  ],
                ),
                SizedBox(width: 4,),
                Column(
                  children: [
                    Text("সভাপতি",
                      style: TextStyle(
                        fontSize: AllSize.textSize20,
                        fontWeight: FontWeight.bold
                      ),),
                    Container(
                      height: 150,
                      width: 120,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>AuthorityDetails(
                                  img: "assets/images/Emon.jpg",
                                  name: "মোঃ ইমন হাওলাদার",
                                  fatherName: "মোঃ ছরোয়ার হাওলাদার",
                                  memberNo: "০২ (দুই)",
                                  admitionDate: "-/-/-",
                                  address: "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ")));
                        },
                          child: Image.asset("assets/images/Emon.jpg")),
                    ),

                  ],
                ),
                SizedBox(width: 4,),
                Column(
                  children: [
                    SizedBox(height: 10,),
                    Text("সাঃ সম্পাদক",
                      style: TextStyle(
                          fontSize: AllSize.textSize18,
                          fontWeight: FontWeight.bold
                      ),),
                    Container(
                      height: 130,
                      width: 100,
                      child: InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>AuthorityDetails(
                                  img: "assets/images/Imran.jpg",
                                  name: "মোঃ ইমরান লস্কর",
                                  fatherName: "মোঃ জাফর লস্কর",
                                  memberNo: "০৪ (চার)",
                                  admitionDate: "-/-/-",
                                  address: "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ")));
                        },
                          child: Image.asset("assets/images/Imran.jpg")),
                    ),
                  ],
                ),
              ],
            ),
          ),
            Text("সদস্য",
              style: TextStyle(
                fontSize: AllSize.textSize20,
                fontWeight: FontWeight.bold
              ),),
            Expanded(
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>AuthorityDetails(
                                  img: e, name: e,
                                  fatherName: e, memberNo: e,
                                  admitionDate: e, address: e)));}
                        );
                      },
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

double containerHeight =  140;
double containerWidth =  100;

List <MemberListModel> listOfModel = [
  memberListModel1,
  memberListModel2,
  memberListModel3,
  memberListModel4,
  memberListModel5,
  memberListModel6,
  memberListModel7,
  memberListModel8,
  memberListModel9,
  memberListModel10,
  memberListModel11,
  memberListModel12,
  memberListModel13,
  memberListModel14,
  memberListModel15,
  memberListModel16,
  memberListModel17
];

MemberListModel memberListModel1 = MemberListModel("assets/images/sahin.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel2 = MemberListModel("assets/images/Robiul.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel3 = MemberListModel("assets/images/Aminul.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel4 = MemberListModel("assets/images/Alom.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel5 = MemberListModel("assets/images/Imran.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel6 = MemberListModel("assets/images/Belal.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel7 = MemberListModel("assets/images/Saidul.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel8 = MemberListModel("assets/images/Torikul.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel9 = MemberListModel("assets/images/Romjan.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel10 = MemberListModel("assets/images/Tanvir.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel11 = MemberListModel("assets/images/Imran.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel12 = MemberListModel("assets/images/Imran.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel13 = MemberListModel("assets/images/Kamal.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel14 = MemberListModel("assets/images/Tarek.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel15 = MemberListModel("assets/images/Salauddin.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel16 = MemberListModel("assets/images/Nahid.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");
MemberListModel memberListModel17 = MemberListModel("assets/images/Anu.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)", "-/-/-", "01931267305", "উত্তরপাড়া, কোটালীপাড়া, গোপালগঞ্জ");

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