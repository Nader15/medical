import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical/utils/colors_file.dart';
import 'package:medical/utils/custom_widgets/cases_widget.dart';
import 'package:medical/utils/custom_widgets/events.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}


Container homeName = Container(
  child: Row(
    children: [
      Text("Muslim",style: TextStyle(color: primaryAppColor,
      fontWeight: FontWeight.bold,
      fontSize: 15,),),
      Text("Do",style: TextStyle(color: Colors.orange,
        fontWeight: FontWeight.bold,
        fontSize: 15,),),
    ],
  ),
);

class _HomePageState extends State<HomePage> {

  int _currentIndex = 0;

  final items=[
    Cases(),
    Events(),
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
        backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade300,
        title: Text(
          "Urgent Cases",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(80),
          child: Padding(
            padding: const EdgeInsets.only(left: 10,right: 10,bottom: 20),
            child: TextFormField(
              style: TextStyle(color: blackColor),
              cursorColor: primaryAppColor,
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(10)),
                  hintText: 'Search',
                  suffixIcon: IntrinsicHeight(
                    child: GestureDetector(
                      onTap: (){},
                      child: Container(
                        margin: EdgeInsets.only(right: 20),
                        width: 40,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            VerticalDivider(thickness: 1,),
                            SvgPicture.asset(
                              "images/equalizerIcon.svg",
                              color:  primaryAppColor ,
                              width: 22,
                              height: 22,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  hintStyle: TextStyle(
                      color: Colors.grey)),
            ),
          ),
        ),
      ),
        bottomNavigationBar: Row(
          children: [
            BuildNavBar("images/search2.svg","images/search1.svg",'NGOs', true, 0),
            BuildNavBar( "images/eventsIcon1.svg","images/eventsIcon2.svg",'Events', false, 1),
            BuildNavBar( "images/HomeIcon1.svg","images/HomeIcon2.svg",'MuslimDo', false, 2),
            BuildNavBar( "images/DirectoruIcon1.svg","images/DirectoruIcon2.svg",'Directory', false, 3),
            BuildNavBar("images/MoreIcon1.svg","images/MoreIcon2.svg", 'More', false, 4),
          ],
        ),
        body:items[_currentIndex]
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
