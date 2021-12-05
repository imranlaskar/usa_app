import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usa_app/screen/about_usa.dart';
import 'package:usa_app/screen/member/member_list.dart';
import 'package:usa_app/screen/roles.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}
double buttonFontSize = 20;
double buttonHeight = 50;

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Uttarpara Student Association"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/back.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black,
                  BlendMode.dstATop)
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                Image.asset("assets/images/USA2.png"),
                Container(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: SizedBox(
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
        ),
      ),
    );
  }
}
