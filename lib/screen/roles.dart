import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:usa_app/utill/all_color.dart';

class Rules extends StatefulWidget {
  const Rules({Key? key}) : super(key: key);

  @override
  _RulesState createState() => _RulesState();
}

class _RulesState extends State<Rules> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AllColors.appBarColor,
          centerTitle: true,
          title: Text("নিয়মাবলী"),
        ),
        body: Container(
          child: ListView.builder(
            itemCount: ruleText1.length,
              itemBuilder: (context,index){
                return Padding(
                  padding: const EdgeInsets.only(left: 12.0,right: 12,top: 7,bottom: 5),
                  child: Container(
                    decoration: BoxDecoration(
                      color: ruleBacgroundColor1[index],
                      border: Border.all(color: Colors.teal)
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(ruleText1[index],
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.black
                        ),
                      ),
                    ),
                  ),
                );
              }
          ),
        ),
    );
  }
}

List<String> ruleText1 = [
  "1. সমিতির সকল সদস্যের মধ্যে একতা থাকবে।",
  "2. সমিতির চাঁদা মাসিক ভিত্তিতে তোলা হবে। মাসিক চাঁদা সময়মত পরিশোধ করতে না পারলে নির্ধারিত জরিমানা দিতে হবে।",
  "3. বিভিন্ন দিবস উপলক্ষ্যে বাড়তি চাঁদা ধার্য করা যাবে। এই ব্যাপারে কতৃপক্ষ সিদ্ধান্ত নিবে।",
  "4. নির্দিষ্ট সময়ের মধ্যে ক্যাশিয়ারের কাছে টাকা পৌছে দিতে হবে। কারো মাধ্যমে টাকা পাঠালেও তা নির্দিষ্ট সময়ের মধ্যে দিতে হবে। না হলে তা জরিমানার আওতায় নেয়া হবে। প্রয়োজনে ক্যাশিয়ারের সাথে যোগাযোগ করা যেতে পারে।",
  "5. বছরে বাধ্যতামূলক দুইটি সভার আয়োজন করা হবে। এই সভার সময় কতৃপক্ষ এবং সদস্যদের সম্মতিক্রমে নির্ধারন করা হবে। তবে কতৃপক্ষের সিদ্ধান্ত চূরান্ত বলে গণ্য হবে। প্রয়োজন বোধে কতৃপক্ষ বাড়তি সভার আয়োজন করতে পারবে।",
  "6. কতৃপক্ষ যে কোন সিদ্ধান্ত নেওয়ার ক্ষমতা রাখবে। যদি সিদ্ধান্ত নিতে সদস্যদের মতামত প্রয়োজন দেখা দেয় তবে অধিকাংশ সদস্যদের মতের ভিত্তিতে সিদ্ধান্ত নেওয়া হবে। ",
  "7. কতৃপক্ষ চাইলে উপযুক্ত কারণের ভিত্তিতে যে কোন সদস্যের সদস্যপদ বাতিল করতে পারে। ",
  "8. কোন সদস্য চাইলে তার সদস্যপদ বাতিল করতে পারবে। তবে পদ বাতিলের জন্য তাকে কমপক্ষে দুই মাস পূর্বে লিখিত আবেদন করতে হবে।",
  "9. ঋণ গ্রহণে করনীয়:\n\n  ঋণ গ্রহণের ক্ষেত্রে সমিতির নির্ধারিত ঋণ আবেদন ফরম নিয়ে আবেদন করতে হবে।এবং ফরমে উল্লেখিত সব তথ্য দিতে হবে।\n\n  ঋণ গ্রহিতা এবং নিশ্চয়তাকারী দুজনের দুই কপি পাসপোর্ট সাইজের ছবি এবং জাতীয় পরিচয়পত্রের ফটোকপি আবেদনপত্রের সাথে জমা দিতে হবে।",
  "10. সদস্য ঋণগ্রহিতাদের জন্য যারা আগে ঋণ নেয়নি তারা অগ্রাধিকার পাবে।",
  "11. বন্ধকি ঋণ: \n\n  ঋণের ক্ষেত্রে কোনো কিছু বন্ধক রাখতে হবে। \n\n  বন্ধকি জিনিসের আনুমানিক মূল্য ঋণের পরিমানের কম হওয়া চলবে না।\n\n  জমি বন্ধকির ক্ষেত্রে প্রচলিত নিয়ম মানা হবে।\n\n  বন্ধকি জিনিসের প্রয়োজনীয় কাগজপ্র জমা দিতে হবে।",
  "12. ঋণের মেয়াদ হবে এক বছর।",
  "13. মেয়াদ শেষে এককালিন টাকা পরিশোধ করতে হবে।",
  "14. ঋণের লাভের টাকা আগেই কেটে রাখা হবে।",
  "15. ঋণের টাকা নেওয়ার সময় ঋণ গ্রহিতা এবং নিশ্চয়তাকারী দুজনকেই উপস্থিত থাকতে হবে।"
];

Color textBacgroundColor1 = Colors.greenAccent;
Color textBacgroundColor2 = Colors.lightBlueAccent;

List<Color> ruleBacgroundColor1 = [
  textBacgroundColor1,
  textBacgroundColor2,
  textBacgroundColor1,
  textBacgroundColor2,
  textBacgroundColor1,
  textBacgroundColor2,
  textBacgroundColor1,
  textBacgroundColor2,
  textBacgroundColor1,
  textBacgroundColor2,
  textBacgroundColor1,
  textBacgroundColor2,
  textBacgroundColor1,
  textBacgroundColor2,
  textBacgroundColor1
];