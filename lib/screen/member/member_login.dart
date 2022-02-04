import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:usa_app/helper/coustom_button.dart';
import 'package:usa_app/helper/coustom_textformfield.dart';
import 'package:usa_app/screen/admin/data_update.dart';
import 'package:usa_app/screen/member/member_account_details.dart';

class MemberLoginPage extends StatefulWidget {
  const MemberLoginPage({Key? key}) : super(key: key);

  @override
  _MemberLoginPageState createState() => _MemberLoginPageState();
}

class _MemberLoginPageState extends State<MemberLoginPage> {
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
                hintText: 'Enter Phone no',
                labelText: 'Phone',
                obdcureValue: false,
                editingController: _phoneController,
              ),
              SizedBox(height: 20,),
              CoustomTextFormField(
                obdcureValue: true,
                editingController: _memberPassController,
                hintText: 'Enter Password',
                labelText: 'Password',
              ),
              SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  singIn(
                      _phoneController.text,
                      _memberPassController.text,
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
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have a account ",
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.black
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context)=>DataUpdate()));
                    },
                    child: Text('SingUp',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.indigo
                      ),
                    ),
                  )
                ],
              )
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
          MaterialPageRoute(builder: (context)=>MemberAccountDetails()))
    }).catchError((e){
      Fluttertoast.showToast(msg: e.message);
    });

  }
}
final _auth = FirebaseAuth.instance;
TextEditingController _phoneController=TextEditingController();
TextEditingController _memberPassController=TextEditingController();