import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical/ui/donate_screen.dart';
import 'package:medical/ui/event_screen.dart';
import 'package:medical/utils/colors_file.dart';
import 'package:medical/utils/navigator.dart';
import '../colors_file.dart';
import '../colors_file.dart';

class Events extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Container(
            child: ListView.builder(
          itemCount: 4,
          itemBuilder: (ctx, index) {
            return GestureDetector(
              onTap: () {
                navigateAndKeepStack(context, EventScreen());
              },
              child: Container(
                padding: EdgeInsets.all(20),
                child: Container(
                  height: 420,
                  width: 330,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                        image: AssetImage("images/event.jpg"),
                        fit: BoxFit.scaleDown,
                        alignment: Alignment(0, -1.55),
                      )),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                              alignment: Alignment.topRight,
                              child: IconButton(
                                onPressed: () {},
                                icon: Image.asset("images/shareIcon.png",width: 20,)
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                                        height: 25,
                                        width: 80,
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
                                        height: 25,
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
                            SizedBox(
                              height: 20,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 10),
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 230,
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
                                        style: TextStyle(
                                            color: grey, fontSize: 15),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset("images/flag.png",width: 20,),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Event Type",
                                            style: TextStyle(
                                                color:
                                                    blackColor.withOpacity(0.9),
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset("images/time.png",width: 20,),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "06:00 PM - 08:00 PM",
                                            style: TextStyle(
                                                color:
                                                    blackColor.withOpacity(0.9),
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        children: [
                                          Image.asset("images/group.png",width: 20),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "25/40",
                                            style: TextStyle(
                                                color:
                                                    blackColor.withOpacity(0.9),
                                                fontSize: 15),
                                          ),
                                        ],
                                      ),

                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                ],
                              ),
                            ),
                            Center(
                              child: RaisedButton(
                                padding: EdgeInsets.only(left: 115, right: 115),
                                onPressed: () {},
                                color: primaryAppColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0)),
                                child: Text(
                                  "REGISTER",
                                  style: TextStyle(
                                      color: whiteColor, fontSize: 15),
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: InkWell(
                                onTap: () {},
                                child: RichText(
                                  text: TextSpan(
                                    text: "View Details",
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: primaryAppColor,
                                      decoration: TextDecoration.underline,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        )),
      ),
    );
  }
}
