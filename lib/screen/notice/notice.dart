import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slider_drawer/flutter_slider_drawer.dart';
import 'package:usa_app/model/notice_model.dart';
import 'package:usa_app/utill/all_color.dart';

class NoticeViewPage extends StatefulWidget {
  const NoticeViewPage({Key? key}) : super(key: key);

  @override
  _NoticeViewPageState createState() => _NoticeViewPageState();
}

class _NoticeViewPageState extends State<NoticeViewPage> {
  final _fireStore = FirebaseFirestore.instance;
  Future<void> getData() async {
    QuerySnapshot querySnapshot = await
    _fireStore.collection('adminText').get();
    final allData = querySnapshot.
    docs.map((doc) => doc.data()).toList();
    for(int i=0; i<allData.length;i++)
      postList.add(AdminPostModel.fromMap(allData[i]));
  }
  @override
  void initState() {
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AllColors.appColor,
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            children: [
              for(int j=postList.length-1; j>=0;j--)
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12,top: 12),
                child: Container(
                  color: Colors.greenAccent,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          children: [
                            CircleAvatar(
                                radius: 25,
                                backgroundImage: AssetImage
                                  ('assets/images/NewUSA.jpg'),
                              ),
                            SizedBox(width: 10,),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Admin",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 23
                                  ),
                                ),
                                Text(postList[j].time.toString()),
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Text(postList[j].post.toString(),
                          style: TextStyle(
                            fontSize: 20
                          ),
                        ),
                      ),
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
List<AdminPostModel> postList=[];
AdminPostModel adminPostModel= AdminPostModel();