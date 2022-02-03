import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:usa_app/utill/all_color.dart';

class OnlineComunication extends StatefulWidget {
  const OnlineComunication({Key? key}) : super(key: key);

  @override
  _OnlineComunicationState createState() => _OnlineComunicationState();
}

class _OnlineComunicationState extends State<OnlineComunication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appBarColor,
        title: Text("অনলাইন যোগাযোগ"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
              onTap: (){
                _launchURLFacebook();
              },
              child: Container(
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    )
                ),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Container(
                      height: 150,
                        width: 150,
                        child: Image.asset("assets/images/online_comu/Facebook.png")),
                    SizedBox(height: 20,),
                    Text("Facebook",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.indigo
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 15,),
            InkWell(
              onTap: (){
                _launchURLFacebook();
              },
              child: Container(
                color: Colors.indigoAccent.shade100,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text("Go to Facebook Group",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
const String _urlFB = 'https://www.facebook.com/groups/319594678856861';

void _launchURLFacebook() async {
  if (!await launch(_urlFB)) throw 'Network Error!!';
}
