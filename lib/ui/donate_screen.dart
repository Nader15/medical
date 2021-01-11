import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical/utils/colors_file.dart';
import 'package:medical/utils/custom_widgets/donate_widget.dart';

import 'home_page.dart';

class DonateScreen extends StatefulWidget {


  @override
  _DonateScreenState createState() => _DonateScreenState();
}

class _DonateScreenState extends State<DonateScreen> {
  int _currentIndex = 0;

  final items=[
    DonateWidget(),
    Center(
      child: Text("Events"),
    ),
    Center(
      child: Text("MuslimDo"),
    ),
    Center(
      child: Text("Directory"),
    ),
    Center(
      child: Text("More"),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: Row(
          children: [
            BuildNavBar("images/search2.svg","images/search1.svg",'NGOs', true, 0),
            BuildNavBar( "images/eventsIcon1.svg","images/eventsIcon2.svg",'Events', false, 1),
            BuildNavBar( "images/HomeIcon1.svg","images/HomeIcon2.svg",'MuslimDo', false, 2),
            BuildNavBar( "images/DirectoruIcon1.svg","images/DirectoruIcon2.svg",'Directory', false, 3),
            BuildNavBar("images/MoreIcon1.svg","images/MoreIcon2.svg", 'More', false, 4),
          ],
        ),
      body: items[_currentIndex]
    );
  }

  Widget BuildNavBar(String icon1,String icon2, String name, bool isActive, int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _currentIndex = index;
        });
      },
      child: Container(
          alignment: Alignment.center,
          height: 70,
          width: MediaQuery.of(context).size.width / 5,
          decoration: BoxDecoration(

            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              index == _currentIndex ? SvgPicture.asset(
                icon1,
                color: index == _currentIndex ? primaryAppColor : Colors.grey,
                width: 22,
                height: 22,
              ):SvgPicture.asset(
                icon2,
                color:  primaryAppColor ,
                width: 22,
                height: 22,
              ),
              SizedBox(height: 10),
              index == _currentIndex && name =="MuslimDo"?homeName:Text(
                name,
                style: TextStyle(
                  color: primaryAppColor,
                ),
              )
            ],
          )),
    );
  }
}
