import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical/utils/colors_file.dart';
import 'package:medical/utils/custom_widgets/cases_widget.dart';
import 'package:medical/utils/navigator.dart';
import 'package:medical/utils/ui/donate_screen.dart';

class Announcements extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "images/megaphone.svg",
                              color: blackColor,
                              width: 22,
                              height: 22,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Announcements",
                              style: TextStyle(
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {},
                            child: RichText(
                              text: TextSpan(
                                text: "See All",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blackColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      height: 300,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("images/annoncements.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            height: 30,
                            width: 130,
                            decoration: BoxDecoration(
                              color: Colors.blue.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Text(
                              "NEW PROGRAM",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                          ),
                          Container(
                            width: 120,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      SvgPicture.asset(
                                        "images/heart.svg",
                                        color: Colors.grey,
                                        width: 22,
                                        height: 22,
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        "130",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                ),
                                Container(
                                  child: Row(
                                    children: [
                                      Icon(
                                        Icons.access_time,
                                        color: Colors.grey,
                                      ),
                                      SizedBox(width: 5,),
                                      Text(
                                        "20m",
                                        style: TextStyle(color: Colors.grey),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      height: 110,
                      child: Text(
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Container(
                          child: Row(
                            children: [
                              SvgPicture.asset(
                                "images/heart.svg",
                                color: primaryAppColor,
                                width: 22,
                                height: 22,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                "130",
                                style: TextStyle(color: primaryAppColor),
                              )
                            ],
                          ),
                        ),
                        SizedBox(width: 20,),
                        Container(
                          child: Row(
                            children: [
                              Icon(
                                Icons.exit_to_app,
                                color: primaryAppColor,
                              ),
                              SizedBox(width: 5,),
                              Text(
                                "20m",
                                style: TextStyle(color: primaryAppColor),
                              )
                            ],
                          ),

                        )
                      ],
                    ),
                    Divider(thickness: 1,height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              "images/alarm.svg",
                              color: blackColor,
                              width: 30,
                              height: 30,
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Urgent Cases",
                              style: TextStyle(
                                  color: blackColor,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.center,
                          child: InkWell(
                            onTap: () {},
                            child: RichText(
                              text: TextSpan(
                                text: "See All",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: blackColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: (){
                  navigateAndKeepStack(context,DonateScreen());
                },
                child: Container(
                  padding: EdgeInsets.all(10),
                  child: Container(
                    height: 300,
                    width: 330,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: AssetImage("images/patient.jpg"), fit: BoxFit.cover)),
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 0.5,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.teal,
                                borderRadius: BorderRadius.circular(20),
                              )),
                        ),
                        Opacity(
                            opacity: 0.6,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                gradient: LinearGradient(
                                    begin: Alignment.topCenter,
                                    end: Alignment.bottomCenter,
                                    colors: [
                                      Colors.transparent,
                                      Colors.black,
                                    ]),
                              ),
                            )),
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    height: 30,
                                    width: 100,
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Text(
                                      "MEDICAL",
                                      style: TextStyle(fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: Icon(
                                      Icons.exit_to_app,
                                      color: whiteColor,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        width: 190,
                                        child: Text(
                                          "Fund For COVID-19 Case",
                                          style: TextStyle(
                                              color: whiteColor,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 25),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      ),
                                      Text(
                                        "To be raised",
                                        style: TextStyle(color: whiteColor, fontSize: 15),
                                      ),
                                      Text(
                                        "\$ 20,000",
                                        style: TextStyle(color: whiteColor, fontSize: 25),
                                      ),
                                      SizedBox(
                                        height: 20,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: 0,
                                  ),
                                  TweenAnimationBuilder(
                                    tween: Tween(begin: 0.0,end:0.58),
                                    duration: Duration(seconds: 1),
                                    builder: (context,value,child){
                                      int percentage = (value*100).ceil();
                                      return Container(
                                        alignment: Alignment.center,
                                        padding: EdgeInsets.all(10),
                                        height: 130,
                                        width: 120,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Stack(
                                          children: [
                                            ShaderMask(
                                              shaderCallback: (rect){
                                                return SweepGradient(
                                                    startAngle: 0.1,
                                                    endAngle: 3.14*2,
                                                    stops: [value,value],
                                                    center: Alignment.center,
                                                    colors: [Colors.white,Colors.transparent]
                                                ).createShader(rect);
                                              },
                                              child: Container(
                                                width: 100,
                                                height: 200,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Container(
                                                width: 80,
                                                height: 100,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.teal
                                                ),
                                              ),
                                            ),
                                            Center(
                                              child: Container(
                                                width: 70,
                                                height: 70,
                                                decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    color: Colors.white
                                                ),
                                                child: Center(
                                                  child: Text("$percentage%",style: TextStyle(fontSize: 20,color: Colors.orange),),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      );
                                    },
                                  )
                                ],
                              ),
                              Center(
                                child: RaisedButton(
                                  padding: EdgeInsets.only(left: 100, right: 100),
                                  onPressed: () {},
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(10.0)),
                                  child: Text(
                                    "DONATE NOW",
                                    style: TextStyle(color: primaryAppColor, fontSize: 15),
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
                                        color: whiteColor,
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
              )
            ],
          ),
        ),
      ),
    );
  }
}
