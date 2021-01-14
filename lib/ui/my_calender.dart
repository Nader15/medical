import 'package:flutter/material.dart';
import 'package:medical/utils/colors_file.dart';
import 'package:medical/utils/custom_widgets/custom_header.dart';

class MyCalender extends StatefulWidget {
  @override
  _MyCalenderState createState() => _MyCalenderState();
}

class _MyCalenderState extends State<MyCalender> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SafeArea(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: CustomHeader(title: "My Calendar"),
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
                        height: 220,
                        width: 330,
                        child: Padding(
                          padding: EdgeInsets.zero,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 300,
                                child: Text(
                                  "Purifying Your Heart by Dr. Haifaa Younis",
                                  style: TextStyle(
                                      color: blackColor,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ),
                              SizedBox(
                                height: 5,
                              ),
                              Container(
                                width: 300,
                                child: Text(
                                  "Hosted by Abu Huraira Center",
                                  style: TextStyle(
                                      color: greyColor,
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
                                      leading: Image.asset("images/flag.png",width: 20,),
                                      title: Text(
                                        "Event Type",
                                        style: TextStyle(
                                            color: blackColor.withOpacity(0.9),
                                            fontSize: 15),
                                      ),
                                    ),
                                    ListTile(
                                      contentPadding: EdgeInsets.zero,
                                      leading: Image.asset("images/time.png",width: 20,),
                                      title: Text(
                                        "06:00 PM — 08:00 PM",
                                        style: TextStyle(
                                            color: blackColor.withOpacity(0.9),
                                            fontSize: 15),
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
                                    "VIEW DETAILS",
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
                        color: dustyOrangeTwo,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "01",
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
                  Card(
                    margin: EdgeInsets.only(top: 360),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20)),
                    elevation: 1,
                    child: Container(
                      padding: EdgeInsets.all(20),
                      child: Container(
                        height: 200,
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
                                    "VIEW DETAILS",
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
                    padding: const EdgeInsets.only(left: 15, top: 330),
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
      ),
    );
  }
}
