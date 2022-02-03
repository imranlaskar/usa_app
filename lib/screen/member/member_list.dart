import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usa_app/model/member_list_model.dart';
import 'package:usa_app/screen/member/authority_details.dart';
import 'package:usa_app/screen/member/main_authority.dart';
import 'package:usa_app/utill/all_color.dart';
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
        backgroundColor: AllColors.appBarColor,
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
                            MaterialPageRoute(builder: (context)=>MainAuthority(
                                img: "assets/images/Jahid.jpg",
                                name: "মোঃ জাহিদ শিকদার",
                                fatherName: "মোঃ আইউব আলী শিকদার",
                                memberNo: "০১ (এক)",
                                admitionDate: "০৯/০৭/২০১৫",
                                address: "উত্তরপাড়া, কোটালীপাড়া,",
                              phoneNo: '০১৯৫৪৮১৩৪২১',
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
                              MaterialPageRoute(builder: (context)=>MainAuthority(
                                  img: "assets/images/Emon.jpg",
                                  name: "মোঃ ইমন হাওলাদার",
                                  fatherName: "মোঃ ছরোয়ার হাওলাদার",
                                  memberNo: "০২ (দুই)",
                                  admitionDate: "০৯/০৭/২০১৫",
                                  address: "উত্তরপাড়া, কোটালীপাড়া,",
                                phoneNo: '০১৯৫৩৮৫১৯১৪',)));
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
                              MaterialPageRoute(builder: (context)=>MainAuthority(
                                  img: "assets/images/Imran.jpg",
                                  name: "মোঃ ইমরান লস্কর",
                                  fatherName: "মোঃ জাফর লস্কর",
                                  memberNo: "০৪ (চার)",
                                  admitionDate: "০৯/০৭/২০১৫",
                                  address: "উত্তরপাড়া, কোটালীপাড়া,",
                                phoneNo: '০১৬৩৫৬১২৪৬৪',)));
                        },
                          child: Image.asset("assets/images/Imran.jpg")),
                    ),
                  ],
                ),
              ],
            ),
          ),
            Container(
              height: 2,
              width: MediaQuery.of(context).size.width,
              color: Colors.black,
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
                children: listOfModel.map((e){
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: InkWell(
                      child: Container(
                          height: containerHeight,
                          width: containerWidth,
                          child: Image.asset(e.img,fit: BoxFit.cover,)),
                      onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>AuthorityDetails(memberListModel: e,
                               )));
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

MemberListModel memberListModel1 = MemberListModel("assets/images/sahin.jpg", "মোঃ শাহিন তালুকদার", "মোঃ এচাহাক তালুকদার", "০৩ (তিন)","০১৯৩১২৬৭৩০৫", "০৯/০৭/২০১৫", "০১৯৩১২৬৭৩০৫", "উত্তরপাড়া,");
MemberListModel memberListModel2 = MemberListModel("assets/images/Robiul.jpg", "মোঃ রবিউল ইসলাম", "মোঃ ", "০৫ (পাঁচ)","০১৯৩০১৪৩৪১৬", "২১/০৮/২০১৫", "০১৯৩০১৪৩৪১৬", "উত্তরপাড়া,");
MemberListModel memberListModel3 = MemberListModel("assets/images/Aminul.jpg", "মোঃ আমিনুল হাওলাদার", "মোঃ ", "০৬ (ছয়)","০১৪০৩৬২৫৫১২", "২১/০৮/২০১৫", "০১৪০৩৬২৫৫১২", "উত্তরপাড়া, ");
MemberListModel memberListModel4 = MemberListModel("assets/images/Alom.jpg", "মোঃ আলম শিকদার", "মোঃ শামিম শিকদার", "০৭ (সাত)","০১৯৩৯৩৬৬৩৫২", "২৯/০১/২০১৬", "০১৯৩৯৩৬৬৩৫২", "উত্তরপাড়া,");
MemberListModel memberListModel5 = MemberListModel("assets/images/null.jpg", "মোঃ শাহিন শিকদার", "মোঃ আইউব আলী শিকদার", "০৮ (আট)","০১৯৪৭৪৩৮৩১২", "০৮/০৪/২০১৬", "০১৯৪৭৪৩৮৩১২", "উত্তরপাড়া, ");
MemberListModel memberListModel6 = MemberListModel("assets/images/Belal.jpg", "মোঃ বেলাল লস্কর", "মোঃ ছলেমান লস্কর", "০৯ (নয়)", "০১৯৫২৬২৪৭৫৩","০৮/০৪/২০১৬", "০১৯৫২৬২৪৭৫৩", "উত্তরপাড়া, ");
MemberListModel memberListModel7 = MemberListModel("assets/images/Saidul.jpg", "মোঃ সাইদুল হাওলাদার", "মোঃ আঃ সামাদ হাওলাদার", "১০ (দশ)","০১৯৮৮৩৯৭১৪৯", "০৮/০৪/২০১৬", "০১৯৮৮৩৯৭১৪৯", "উত্তরপাড়া, ");
MemberListModel memberListModel8 = MemberListModel("assets/images/Torikul.jpg", "মোঃ তরিকুল ইসলাম", "মোঃ মুজিবুর রহমান", "১১ (এগারো)", "০১৯৭১১৩৭৭৫৬","০৮/০৪/২০১৬", "০১৯৭১১৩৭৭৫৬", "উত্তরপাড়া, ");
MemberListModel memberListModel9 = MemberListModel("assets/images/Romjan.jpg", "মোঃ রমজান শিকদার", "মোঃ ওহাব শিকদার", "১২ (বার)","০১৯৪৪১৬৯২৯৩", "১৪/০৪/২০১৬", "০১৯৪৪১৬৯২৯৩", "জটিয়ার বাড়ি, ");
MemberListModel memberListModel10 = MemberListModel("assets/images/Tanvir.jpg", "মোঃ তানভির তালুকদার", "মোঃ ফায়েক তালুকদার", "১৩ (তের)","০১৯৭১১৩৭৭৯২", "০৭/০৭/২০১৭", "০১৯৭১১৩৭৭৯২", "উত্তরপাড়া, ");
MemberListModel memberListModel11 = MemberListModel("assets/images/null.jpg", "মোঃ মাসুদ তালুকদার", "মোঃ মুনসুর তালুকদার", "১৪ (চৌদ্দ)","০১৯৪০৪২৬৭০৬", "০৭/০৭/২০১৭", "০১৯৪০৪২৬৭০৬", "উত্তরপাড়া, ");
MemberListModel memberListModel12 = MemberListModel("assets/images/null.jpg", "মোঃ মোস্তাকিম ফকির", "মোঃ সবুজ ফকির", "১৫ (পনেরো)", "০১৯৩৭২৭৮৪৩৬","০৭/০৭/২০১৭", "০১৯৩৭২৭৮৪৩৬", "পূর্বপাড়া, ");
MemberListModel memberListModel13 = MemberListModel("assets/images/Kamal.jpg", "মোঃ কামাল মোল্লা", "মোঃ মতিয়ার মোল্লা", "১৬ (ষোল)", "০১৯৮২৪৬১২৩৪","২৪/১২/২০১৭", "০১৯৮২৪৬১২৩৫", "উত্তরপাড়া, ");
MemberListModel memberListModel14 = MemberListModel("assets/images/Tarek.jpg", "মোঃ তারেক কাজী", "মোঃ নান্টু কাজী", "১৭ (সতেরো)", "০১৯৮০৪৯১২৩৩","৩১/১২/২০১৭", "০১৯৮০৪৯১২৩৩", "উত্তরপাড়া, ");
MemberListModel memberListModel15 = MemberListModel("assets/images/Salauddin.jpg", "মোঃ সালাহউদ্দিন শিকদার", "মোঃ সাইফুল আলম", "১৮ (আঠারো)","০১৯১৫৮২১০৯৯", "০২/০২/২০১৮", "০১৯১৫৮২১০৯৯", "উত্তরপাড়া, ");
MemberListModel memberListModel16 = MemberListModel("assets/images/Nahid.jpg", "মোঃ নাহিদ লস্কর", "মোঃ জাফর লস্কর", "১৯ (ঊনিশ)","০১৯৩৮৯৬১১০৩", "০২/০২/২০১৮", "০১৯৩৮৯৬১১০৩", "উত্তরপাড়া,");
MemberListModel memberListModel17 = MemberListModel("assets/images/Anu.jpg", "মোঃ মাহাবুব লস্কর", "মোঃ হাইউল লস্কর", "২০ (বিশ)","০১৯৪৫৯১৬৮৯১", "২৮/০২/২০১৮", "০১৯৪৫৯১৬৮৯১", "উত্তরপাড়া,");
