import 'package:flutter/material.dart';
import 'package:medical/utils/colors_file.dart';
import 'package:medical/utils/custom_widgets/custom_header.dart';

class JummahDetails extends StatefulWidget {
  @override
  _JummahDetailsState createState() => _JummahDetailsState();
}

class _JummahDetailsState extends State<JummahDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: Column(
        children: [
          SafeArea(
            child: Container(
              padding: EdgeInsets.only(top: 20),
              child: CustomHeader(title: "Jummah Details"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Stack(
              children: [
                Card(
                  margin: EdgeInsets.only(top: 60),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  elevation: 1,
                  child: Container(
                    padding: EdgeInsets.all(20),
                    child: Container(
                      height: 420,
                      width: 330,
                      child: Padding(
                        padding: EdgeInsets.zero,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 200,
                              child: Text(
                                "Jummah Prayer",
                                style: TextStyle(
                                    color: blackColor,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),

                            SizedBox(
                              width: MediaQuery.of(context).size.width/1.3,
                              child: Column(
                                children: [
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: Image.asset("images/mic.png",width: 25,),
                                    title: Text(
                                      "2:50 PM — 3:00 PM",
                                      style: TextStyle(
                                          color: blackColor.withOpacity(0.9),
                                          fontSize: 15),
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: Image.asset("images/location.png",width: 20,),
                                    title: Text(
                                      "Abu Huraira Center",
                                      style: TextStyle(
                                          color: blackColor.withOpacity(0.9),
                                          fontSize: 15),
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: Image.asset("images/sheikh.png",width: 20,),
                                    title: Text(
                                      "Sheikh Mohamed Hassan Aly",
                                      style: TextStyle(
                                          color: blackColor.withOpacity(0.9),
                                          fontSize: 15),
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: Image.asset("images/language.png",width: 20,),
                                    title: Container(
                                      width: MediaQuery.of(context).size.width / 1.5,
                                      child: Text(
                                        "Arabic",
                                        style: TextStyle(
                                            color: blackColor.withOpacity(0.9),
                                            fontSize: 15),
                                      ),
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: Image.asset("images/mail.png",width: 20,),
                                    title: Container(
                                      width: MediaQuery.of(context).size.width / 1.5,
                                      child: Text(
                                        "Mosque@gmail.com",
                                        style: TextStyle(
                                            color: blackColor.withOpacity(0.9),
                                            fontSize: 15),
                                      ),
                                    ),
                                    trailing: Container(
                                      padding: EdgeInsets.all(5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: primaryAppColor)),
                                      child: Image.asset("images/mail2.png",width: 20,),
                                    ),
                                  ),
                                  ListTile(
                                    contentPadding: EdgeInsets.zero,
                                    leading: Image.asset("images/call.png",width: 20,),
                                    title: Text(
                                      "+1 987 6272 89873",
                                      style: TextStyle(
                                          color: blackColor.withOpacity(0.9),
                                          fontSize: 15),
                                    ),
                                    trailing: Container(
                                      padding: EdgeInsets.all(5),
                                      height: 30,
                                      width: 30,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(color: primaryAppColor)),
                                      child: Image.asset("images/call2.png",width: 20,),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: RaisedButton(
                                padding: EdgeInsets.only(left: 90, right: 90),
                                onPressed: () {},
                                color: primaryAppColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text(
                                  "VIEW EVENT",
                                  style: TextStyle(
                                      color: whiteColor, fontSize: 15),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15, top: 30),
                  child: Container(
                    alignment: Alignment.center,
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                      color: Color(0xffffce4a),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "05",
                          style: TextStyle(color: whiteColor, fontSize: 15),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "JAN",
                          style: TextStyle(color: whiteColor, fontSize: 9),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
