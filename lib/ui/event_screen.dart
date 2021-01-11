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

class EventScreen extends StatefulWidget {
  @override
  _EventScreenState createState() => _EventScreenState();
}

class _EventScreenState extends State<EventScreen> {
  bool displayed = false;

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
                      image: AssetImage("images/event.jpg"),
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
                              IconButton(
                                onPressed: () {},
                                icon: Image.asset("images/shareIcon.png",width: 20,)
                              )
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
                          width: 260,
                          child: Text(
                            "Puffering your heart by Dr. Haifaa Younis",
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
                            "06:00 PM - 08:00 PM",
                            style: TextStyle(
                                color: blackColor.withOpacity(0.9),
                                fontSize: 15),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset("images/money.png",width: 20,),
                          title: Text(
                            "\$ 20",
                            style: TextStyle(
                                color: blackColor.withOpacity(0.9),
                                fontSize: 15),
                          ),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Image.asset("images/location.png",width: 20,),
                          title: Container(
                            width: MediaQuery.of(context).size.width / 1.5,
                            child: Text(
                              "56 Boustead Ave, Toronto, ON M6R 1Y9, Canada",
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
                              "Bussiness@gmail.com",
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
                        Divider(
                          height: 30,
                          thickness: 1,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                             Image.asset('images/gender.png',width: 30,height: 30,),
                                Text(
                                  "Target Gender",
                                  style: TextStyle(color: primaryAppColor),
                                ),
                                Text(
                                  "Female",
                                  style: TextStyle(
                                      color: primaryAppColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset("images/peopleicon.png",color: primaryAppColor,width: 20,height: 30,),
                                Text(
                                  "Target Age",
                                  style: TextStyle(color: primaryAppColor),
                                ),
                                Text(
                                  "20 -- 25",
                                  style: TextStyle(
                                      color: primaryAppColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                            Column(
                              children: [
                                Image.asset('images/seats.png',width: 20,height: 30,),
                                Text(
                                  "Available Seats",
                                  style: TextStyle(color: primaryAppColor),
                                ),
                                Text(
                                  "25/40",
                                  style: TextStyle(
                                      color: primaryAppColor,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Divider(
                          height: 30,
                          thickness: 1,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: InkWell(
                                onTap: () {
                                  setState(() {
                                    displayed = !displayed;
                                  });
                                },
                                child: RichText(
                                  text: TextSpan(
                                    text: "About the event",
                                    style: TextStyle(
                                      fontSize: 20,
                                      color: primaryAppColor,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            displayed==true?Icon(
                              Icons.keyboard_arrow_up,
                              color: primaryAppColor,
                              size: 30,
                            ):Icon(
                              Icons.keyboard_arrow_down,
                              color: primaryAppColor,
                              size: 30,
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        displayed == true
                            ? Column(
                          children: [
                            Container(
                              height: 110,
                              child: Text(
                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                                style: TextStyle(fontSize: 15),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: primaryAppColor)),
                                  child: Text("Tag 01"),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: primaryAppColor)),
                                  child: Text("Tag 02"),
                                ),
                                Container(
                                  alignment: Alignment.center,
                                  height: 20,
                                  width: 100,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      border: Border.all(color: primaryAppColor)),
                                  child: Text("Tag 03"),
                                ),
                              ],
                            )
                          ],
                        ):Container(),
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
            Align(
              alignment: Alignment.topRight,
              child: Padding(
                padding: const EdgeInsets.only(top: 150, left: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 60,
                      width: 60,
                      decoration: BoxDecoration(
                        color: primaryAppColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "05",
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 20),
                            textAlign: TextAlign.center,
                          ),
                          Text(
                            "JAN",
                            style: TextStyle(
                                color: whiteColor,
                                fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 79,
                          decoration: BoxDecoration(
                            color: tomato,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Text(
                            "\$ 20",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                                fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 35,
                          width: 96,
                          decoration: BoxDecoration(
                            color: dustyOrangeTwo,
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(20),
                              bottomLeft: Radius.circular(20),
                            ),
                          ),
                          child: Text(
                            "Online",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: whiteColor,
                                fontSize: 15),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
