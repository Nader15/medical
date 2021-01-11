import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical/ui/donate_screen.dart';
import 'package:medical/ui/event_screen.dart';
import 'package:medical/utils/colors_file.dart';
import 'package:medical/utils/navigator.dart';
import '../colors_file.dart';
import '../colors_file.dart';
import '../colors_file.dart';
import '../colors_file.dart';
import '../colors_file.dart';
import '../colors_file.dart';
import '../colors_file.dart';
import '../colors_file.dart';
import '../colors_file.dart';
import '../colors_file.dart';

class Jummah extends StatefulWidget {
  @override
  _JummahState createState() => _JummahState();
}

class _JummahState extends State<Jummah> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: blackColor,
          ),
        ),
        title: Text(
          "Jum’a Booking",
          style: TextStyle(color: blackColor),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff00a5af),
      ),
      backgroundColor: Color(0xff00a5af),
      body: Center(
        child: Stack(
          children: [
            Container(
              alignment: Alignment.topCenter,
              child: Image.asset("images/Background1.png",width: 110),
            ),Container(
              padding: EdgeInsets.only(right: 70,top: 10),
              alignment: Alignment.topCenter,
              child: Image.asset("images/logo1.png",width: 90),
            ),
            Container(
              padding: EdgeInsets.only(top: 20),
              alignment: Alignment.topCenter,
              child: Image.asset("images/logo2.png",width: 70,),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 120),
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
                        Text(
                          "Next Jum’a Date",
                          style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "1 Jan 2021",
                          style: TextStyle(
                              color: primaryAppColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Divider(
                          height: 30,
                          thickness: 1,
                        ),
                        Text(
                          "Select time",
                          style: TextStyle(
                              color: blackColor,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            alignment: Alignment.center,
                            width: 34,
                            height: 20,
                            decoration: BoxDecoration(
                              color: primaryAppColor,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text("01",style: TextStyle(color: whiteColor),),
                          ),
                          title: IntrinsicHeight(
                            child: Row(
                              children: [
                                Text("1:37 PM",),
                                VerticalDivider(thickness: 1,color: primaryAppColor,),
                                Text("Arabic",),
                                VerticalDivider(thickness: 1,color: primaryAppColor,),
                                Text("02/10",),
                              ],
                            ),
                          ),
                          subtitle: Text("Sheikh Mohamed Hassan Aly",style: TextStyle(fontSize: 15,color: blackColor),),
                          trailing: custom_checkBox(),
                        ),
                        Divider(
                          height: 10,
                          thickness: 1,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            alignment: Alignment.center,
                            width: 34,
                            height: 20,
                            decoration: BoxDecoration(
                                color: primaryAppColor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text("02",style: TextStyle(color: whiteColor),),
                          ),
                          title: IntrinsicHeight(
                            child: Row(
                              children: [
                                Text("1:37 PM",),
                                VerticalDivider(thickness: 1,color: primaryAppColor,),
                                Text("Arabic",),
                                VerticalDivider(thickness: 1,color: primaryAppColor,),
                                Text("Fully Booked",style: TextStyle(color: tomato,fontSize: 15),),
                              ],
                            ),
                          ),
                          subtitle: Text("Sheikh Mohamed Hassan Aly",style: TextStyle(fontSize: 15,color: blackColor),),
                          trailing: custom_checkBox(),
                        ),
                        Divider(
                          height: 10,
                          thickness: 1,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            alignment: Alignment.center,
                            width: 34,
                            height: 20,
                            decoration: BoxDecoration(
                                color: primaryAppColor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text("01",style: TextStyle(color: whiteColor),),
                          ),
                          title: IntrinsicHeight(
                            child: Row(
                              children: [
                                Text("1:37 PM",),
                                VerticalDivider(thickness: 1,color: primaryAppColor,),
                                Text("Arabic",),
                                VerticalDivider(thickness: 1,color: primaryAppColor,),
                                Text("02/10",),
                              ],
                            ),
                          ),
                          subtitle: Text("Sheikh Mohamed Hassan Aly",style: TextStyle(fontSize: 15,color: blackColor),),
                          trailing: custom_checkBox(),
                        ),
                        Divider(
                          height: 10,
                          thickness: 1,
                        ),
                        ListTile(
                          contentPadding: EdgeInsets.zero,
                          leading: Container(
                            alignment: Alignment.center,
                            width: 34,
                            height: 20,
                            decoration: BoxDecoration(
                                color: primaryAppColor,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Text("01",style: TextStyle(color: whiteColor),),
                          ),
                          title: IntrinsicHeight(
                            child: Row(
                              children: [
                                Text("1:37 PM",),
                                VerticalDivider(thickness: 1,color: primaryAppColor,),
                                Text("Arabic",),
                                VerticalDivider(thickness: 1,color: primaryAppColor,),
                                Text("02/10",),
                              ],
                            ),
                          ),
                          subtitle: Text("Sheikh Mohamed Hassan Aly",style: TextStyle(fontSize: 15,color: blackColor),),
                          trailing: custom_checkBox(),
                        ),
                        Divider(
                          height: 10,
                          thickness: 1,
                        ),

                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: RaisedButton(
                            padding: EdgeInsets.only(
                                left: 140, right: 140, top: 15, bottom: 15),
                            onPressed: () {},
                            color: primaryAppColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Text(
                              "BOOK",
                              style: TextStyle(color: whiteColor, fontSize: 15),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
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
  bool _isSelected = false;

  GestureDetector custom_checkBox() {
    return GestureDetector(
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
        });
      },
      child: Container(
        decoration: BoxDecoration(
            color: _isSelected ? primaryAppColor : Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: _isSelected
                ? null
                : Border.all(color: primaryAppColor, width: 1.0)),
        width: 20,
        height: 20,
        child:
        _isSelected ? Icon(Icons.check, size: 15, color: whiteColor) : null,
      ),
    );
  }
}
