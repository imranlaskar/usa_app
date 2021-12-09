import 'package:flutter/material.dart';

class OnlineComunication extends StatefulWidget {
  const OnlineComunication({Key? key}) : super(key: key);

  @override
  _OnlineComunicationState createState() => _OnlineComunicationState();
}

class _OnlineComunicationState extends State<OnlineComunication> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: Column(
              children: [
                Container(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
