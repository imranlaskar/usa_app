import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:usa_app/helper/coustom_button.dart';
import 'package:usa_app/helper/coustom_textformfield.dart';
import 'package:usa_app/screen/admin/data_update.dart';

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  _LogInState createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  final GlobalKey <FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Form(
        key: _formKey,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              SizedBox(width: 80,),
              Icon(Icons.ac_unit,size: 200,),
              SizedBox(height: 20,),
              CoustomTextFormField(
                hintText: 'Enter Email',
                labelText: 'Email',
                obdcureValue: false,
                editingController: _emailController,
              ),
              SizedBox(height: 20,),
              CoustomTextFormField(
                hintText: 'Enter Password',
                labelText: 'Password',
                obdcureValue: false,
                editingController: _passController,
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  singIn(
                      _emailController.text,
                      _passController.text,
                      context,
                      _formKey
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0,right: 20),
                  child: CoustomButton(
                      buttonHight: 40,
                      buttonWidth: MediaQuery.of(context).size.width,
                      btnTextColor: Colors.white,
                      buttonText: "LogIn"
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
void singIn(String email, String password,
    context, _formKey)async{
  if(_formKey.currentState!.validate())
  {
    await _auth.signInWithEmailAndPassword(
        email: email, password: password).then((value) =>{
      Fluttertoast.showToast(msg: "Login Successful"),
      Navigator.push(context,
          MaterialPageRoute(builder: (context)=>DataUpdate()))
    }).catchError((e){
      Fluttertoast.showToast(msg: e.message);
    });

  }
}

final _auth = FirebaseAuth.instance;

TextEditingController _emailController = TextEditingController();
TextEditingController _passController = TextEditingController();