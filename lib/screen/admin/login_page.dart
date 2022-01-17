import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
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
                            hintText: "Enter User Name",
                          editingController: _emailController,
                          obdcureValue: false,
                        ),
                        SizedBox(height: 10,),
                        CoustomTextFormField(
                            labelText: "Password",
                            hintText: "Enter Password",
                          editingController: _passController,
                          obdcureValue: true,
                        ),
                        SizedBox(height: 15,),
                        InkWell(
                          onTap: (){
                            SignIn(
                                _emailController.text,
                                _passController.text, context);
                          },
                          child: CoustomButton(
                              buttonHight: 40,
                              buttonWidth: 400,
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
      ),
    );
  }
}
void SignIn(String email, String password, context)async{
  if(_formKey.currentState!.validate()){
    await _auth.signInWithEmailAndPassword(
        email: email, password: password
    ).then((value) => {
      Fluttertoast.showToast(msg: "LogIn Successful!"),
    Navigator.push(context,
    MaterialPageRoute(
    builder: (context)=>AdminHomePage()))
    }).catchError((e){
      Fluttertoast.showToast(msg: e.message);
    });
  }
}
final GlobalKey <FormState> _formKey = GlobalKey<FormState>();
final _auth = FirebaseAuth.instance;
TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();
