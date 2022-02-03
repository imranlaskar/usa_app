import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usa_app/helper/manu_wized.dart';
import 'package:usa_app/online_comunication/online_comunication.dart';
import 'package:usa_app/screen/about_us/about_us.dart';
import 'package:usa_app/screen/about_usa.dart';
import 'package:usa_app/screen/account/account_namber.dart';
import 'package:usa_app/screen/admin/login_page.dart';
import 'package:usa_app/screen/member/member_list.dart';
import 'package:usa_app/screen/notice/notice.dart';
import 'package:usa_app/screen/roles.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
GlobalKey<SliderMenuContainerState> _key =
new GlobalKey<SliderMenuContainerState>();

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    double height= MediaQuery.of(context).size.height;
    double width= MediaQuery.of(context).size.width;
    return Scaffold(
      body: SliderMenuContainer(
          appBarColor: Colors.teal,
          key: _key,
          sliderMenuCloseSize: 0,
          title: Text("Uttarpara Student Association",style: TextStyle(color: Colors.white,
            fontSize: width*0.055,fontWeight: FontWeight.w800),),
          shadowColor: Colors.transparent,
          drawerIconColor: Colors.white,
          drawerIconSize: width*0.08,
        //slideDirection: Slider.RIGHT_TO_LEFT,
        //appBarPadding: const EdgeInsets.only(top: 10),
          sliderMenuOpenSize: 300,
          appBarHeight: 100,
          appBarPadding: EdgeInsets.fromLTRB(0, 40, 0, 0),
          sliderMenu: MenuWidget(
      //  onProfilePictureClick: () {},
            onItemClick: (title) {
              _key.currentState!.closeDrawer();
              setState(() {
                title = title;
                if(title=="ABOUT US"){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs(screenText: '"This app made by Imran Laskar."',)),
                  );
                }else if(title=="Rate this App"){
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs(screenText: "Currently it's not posible" ,)),
                  );
                }else if(title=="More App") {
                  Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AboutUs(screenText: 'There are no app available now!!',)),
                  );
                }
              });
              },
          ),
        sliderMain: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Image.asset("assets/images/USA2.png"),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        SizedBox(height: 12,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: buttonHeight,
                          child: ElevatedButton(
                            child: Text("Notice",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: buttonFontSize,
                                  fontWeight: FontWeight.bold
                              ),
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30)
                                )
                            ),
                            onPressed: (){
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context)=>NoticeViewPage()));
                            },
                          ),
                        ),
                        SizedBox(height: 12,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: buttonHeight,
                          child: ElevatedButton(
                              child: Text("সমিতি সম্পর্কে",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: buttonFontSize,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                            style: ElevatedButton.styleFrom(
                              primary: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)
                              )
                            ),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>AboutUSA()));
                              },
                          ),
                        ),
                        SizedBox(height: 12,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton(
                              child: Text("নিয়মাবলী",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: buttonFontSize,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  )
                              ),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>Rules()));
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton(
                              child: Text("সদস্যদের তালিকা",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: buttonFontSize,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  )
                              ),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder:
                                        (context)=>MemberList()));
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton(
                              child: Text("একাউন্ট নম্বর",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: buttonFontSize,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  )
                              ),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>AccountDetails()));
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton(
                              child: Text("অনলাইন যোগাযোগ",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: buttonFontSize,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  )
                              ),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>OnlineComunication()));
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: SizedBox(
                            height: buttonHeight,
                            child: ElevatedButton(
                              child: Text("এডমিন",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: buttonFontSize,
                                    fontWeight: FontWeight.bold
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                  primary: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30)
                                  )
                              ),
                              onPressed: (){
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context)=>LogIn()));
                              },
                            ),
                          ),
                        ),
                        SizedBox(height: 12,),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        )
      )
    );
  }
}
double buttonFontSize = 20;
double buttonHeight = 50;