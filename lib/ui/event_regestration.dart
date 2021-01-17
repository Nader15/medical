import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical/utils/colors_file.dart';

import '../utils/colors_file.dart';
import '../utils/colors_file.dart';
import '../utils/colors_file.dart';
import '../utils/colors_file.dart';
import '../utils/colors_file.dart';
import '../utils/colors_file.dart';
import '../utils/colors_file.dart';
import '../utils/colors_file.dart';
import '../utils/colors_file.dart';
import '../utils/colors_file.dart';
import '../utils/colors_file.dart';
import '../utils/colors_file.dart';

class EventRegistration extends StatefulWidget {
  @override
  _EventRegistrationState createState() => _EventRegistrationState();
}

class _EventRegistrationState extends State<EventRegistration> {
  // bool displayed = false;
  int _value = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: grey,
                  image: DecorationImage(
                      image: AssetImage("images/cover.png"),
                      alignment: Alignment(0, -1),
                      fit: BoxFit.fitWidth)),
              child: Stack(
                children: [
                  SafeArea(
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_back,
                                  color: whiteColor,
                                ),
                              ),
                              // IconButton(
                              //     onPressed: () {},
                              //     icon: Image.asset("images/shareIcon.png",width: 20,)
                              // )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 190),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 400,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: whiteColor,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 200,
                          child: Text(
                            "Register for",
                            style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 230,
                          child: Text(
                            "Purifying Your Heart by Dr. Haifaa Younis",
                            style: TextStyle(
                                color: blackColor,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Hosted by Abu Hurira Center",
                          style: TextStyle(color: grey, fontSize: 15),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset("images/dateIcon.png",width: 20,),
                          title: Text(
                            "05 JAN 2020",
                            style: TextStyle(
                                color: blackColor.withOpacity(0.9),
                                fontSize: 15),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset("images/time.png",width: 20,),
                          title: Text(
                            "06:00 PM - 08:00 PM",
                            style: TextStyle(
                                color: blackColor.withOpacity(0.9),
                                fontSize: 15),
                          ),
                        ),
                        Divider(
                          height: 30,
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Adult Participants",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                  color: blackColor,
                                  fontSize: 15),
                            ),
                            Text(
                              "\$ 20",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: blackColor,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50,right: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (_value > 1) {
                                        _value--;
                                      }
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 31,
                                    width: 31,
                                    decoration: BoxDecoration(
                                        color: primaryAppColor,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "-",
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                                Text(
                                  "${_value.toString()}",
                                  style: TextStyle(fontSize: 30),
                                  textAlign: TextAlign.start,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (_value < 2) {
                                        _value++;
                                      }
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 31,
                                    width: 31,
                                    decoration: BoxDecoration(
                                        color: primaryAppColor,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "+",
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Divider(
                          height: 30,
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Kids Participants",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: blackColor,
                                  fontSize: 15),
                            ),
                            Text(
                              "\$ 10",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: blackColor,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 20,),
                        Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 50,right: 50),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (_value > 1) {
                                        _value--;
                                      }
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 31,
                                    width: 31,
                                    decoration: BoxDecoration(
                                        color: primaryAppColor,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "-",
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                                Text(
                                  "${_value.toString()}",
                                  style: TextStyle(fontSize: 30),
                                  textAlign: TextAlign.start,
                                ),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      if (_value < 2) {
                                        _value++;
                                      }
                                    });
                                  },
                                  child: Container(
                                    alignment: Alignment.center,
                                    height: 31,
                                    width: 31,
                                    decoration: BoxDecoration(
                                        color: primaryAppColor,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Text(
                                      "+",
                                      style: TextStyle(fontSize: 20),
                                      textAlign: TextAlign.start,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Divider(
                          height: 30,
                          thickness: 1,
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Total Fees",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: blackColor,
                                  fontSize: 20),
                            ),
                            Text(
                              "\$ 30",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: blackColor,
                                  fontSize: 15),
                            ),
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Number of participants",
                              style: TextStyle(

                                  color: blackColor,
                                  fontSize: 15),
                            ),
                            Text(
                              "02",
                              style: TextStyle(

                                  color: blackColor,
                                  fontSize: 15),
                            ),
                          ],
                        ),

                        Divider(
                          height: 30,
                          thickness: 1,
                        ),

                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset("images/build.png",width: 20,),
                          title: Text(
                            "**** **** 8283",
                            style: TextStyle(
                                color: blackColor.withOpacity(0.9),
                                fontSize: 15),
                          ),
                          trailing: Image.asset("images/pen.png",width: 20,),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 250,
                              child: Text(
                                "Please note that by donating you are agreeing to the terms and conditions.",
                                style: TextStyle(
                                    color: grey,
                                    fontSize: 15),
                              ),
                            ),
                            Image.asset("images/info.png",width: 20,),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: RaisedButton(
                            padding: EdgeInsets.only(
                                left: 120, right: 120, top: 15, bottom: 15),
                            onPressed: () {},
                            color: primaryAppColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Text(
                              "REGISTER",
                              style: TextStyle(color: whiteColor, fontSize: 15),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
