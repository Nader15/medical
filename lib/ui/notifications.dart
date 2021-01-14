import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:medical/utils/colors_file.dart';
import 'package:medical/utils/custom_widgets/custom_header.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              child: Container(
                padding: EdgeInsets.only(top: 20),
                child: CustomHeader(title: "Notifications"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 25,right: 25,top: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Recent",style: TextStyle(color: greyColor,fontSize: 15),),
                  SizedBox(height: 10,),
                  Card(
                    elevation: 10,
                    color: whiteColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Container(
                      padding: EdgeInsets.all(10),
                      height: 72,
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("Your help is needed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                              Text("Today",style: TextStyle(fontSize: 15,color: greyColor),),
                            ],
                          ),
                          Text("Urgent Case — Fund for Covid-19 case"),
                        ],
                      ),
                    ),
                  ),
                  Divider(thickness: 1,height: 40,),
                  Container(
                    padding: EdgeInsets.zero,
                    height: MediaQuery.of(context).size.height/1.5,
                    child: ListView.builder(
                      padding: EdgeInsets.zero,
                      itemCount: 10,
                      itemBuilder: (ctx,index) {
                        return notificationWidget();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget notificationWidget(){
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      elevation: 1,
      color: whiteColor,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      child: Container(
        padding: EdgeInsets.all(10),
        height: 72,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Your help is needed",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                Text("3d",style: TextStyle(fontSize: 15,color: greyColor),),
              ],
            ),
            Text("Urgent Case — Fund for Covid-19 case"),
          ],
        ),
      ),
    );
  }
}
