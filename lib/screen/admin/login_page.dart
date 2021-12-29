import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usa_app/helper/coustom_button.dart';
import 'package:usa_app/helper/coustom_textformfield.dart';
import 'package:usa_app/screen/admin/admin_home.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({Key? key}) : super(key: key);

  @override
  _LogInPageState createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Colors.teal,
          child: Column(
            children: [
              SizedBox(height: 100,),
              Container(
                height: 160,
                width: 160,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(99),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                    image: AssetImage("assets/images/NewUSA.jpg")
                  )
                ),
              ),
              SizedBox(height: 40,),
              Container(
                height: 250,
                width: 300,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30)
                ),
                //color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.all(28.0),
                  child: Column(
                    children: [
                      CoustomTextFormField(
                          labelText: "User Name",
                          hintText: "Enter User Name"
                      ),
                      SizedBox(height: 10,),
                      CoustomTextFormField(
                          labelText: "Password",
                          hintText: "Enter Password"
                      ),
                      SizedBox(height: 15,),
                      InkWell(
                        onTap: (){
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context)=>AdminHomePage()));
                        },
                        child: CoustomButton(
                            buttonHight: 50,
                            buttonWidth: 300,
                            btnTextColor: Colors.white,
                            buttonText: "LogIn",
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
