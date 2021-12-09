import 'package:flutter/material.dart';

class MenuWidget extends StatelessWidget {
  final Function(String) onItemClick;

  const MenuWidget({Key? key, required this.onItemClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _heightOnly=MediaQuery.of(context).size.height;
    double _widthOnly=MediaQuery.of(context).size.width;
    return Container(
      color: Colors.orange.shade100,
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(
            height: _heightOnly*0.045,
          ),
          CircleAvatar(
            radius: 65,
            backgroundColor: Colors.grey,
            child: CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage
                ('assets/images/NewUSA.jpg'),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          // Text(
          //   'Creator',
          //   style: TextStyle(
          //     color: Colors.teal,
          //     fontWeight: FontWeight.bold,
          //     fontSize: _widthOnly*0.04,
          //     fontFamily: 'BalsamiqSans',),
          // ),
          Align(
            alignment: Alignment.center,
            child: Text(
              '',
              textAlign: TextAlign.right,
              style: TextStyle(
                color: Colors.teal,
                fontWeight: FontWeight.bold,
                fontSize: _widthOnly*0.06,
                fontFamily: 'BalsamiqSans',),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 2, width: MediaQuery.of(context).size.width,color: Colors.black,
          ),
          sliderItem('ABOUT US', Icons.account_box_outlined),
          sliderItem('Rate this App', Icons.rate_review),
          sliderItem('More App', Icons.view_module_rounded),
        ],
      ),
    );
  }

  Widget sliderItem(String title, IconData icons) => ListTile(
      title: Text(
        title,
        style:
        TextStyle(color: Colors.black, fontFamily: 'BalsamiqSans_Regular'),
      ),
      leading: Icon(
        icons,
        color: Colors.black,
      ),
      onTap: () {
        onItemClick(title);
      });
}