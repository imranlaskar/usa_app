import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AboutUSA extends StatefulWidget {
  const AboutUSA({Key? key}) : super(key: key);

  @override
  _AboutUSAState createState() => _AboutUSAState();
}

class _AboutUSAState extends State<AboutUSA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("সমিতি সম্পর্কে"),
      ),
      body:
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/back.jpg"),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(Colors.black,
                  BlendMode.dstATop)
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text("সমিতি সম্পর্কে",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white
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
