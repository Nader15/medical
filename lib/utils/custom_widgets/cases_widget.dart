import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'file:///C:/Users/nader/AndroidStudioProjects/GitHub/medical/lib/utils/ui/donate_screen.dart';
import 'package:medical/utils/colors_file.dart';

import 'package:medical/utils/navigator.dart';

class Cases extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: Center(
        child: Container(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (ctx,index){
              return GestureDetector(
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
                                color: tealColor,
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
                                    width: 10,
                                  ),
                                  TweenAnimationBuilder(
                                    tween: Tween(begin: 0.0, end: 0.58),
                                    duration: Duration(seconds: 1),
                                    builder: (context, value, child) {
                                      int percentage = (value * 100).ceil();
                                      return Container(
                                        height: 130,
                                        width: 115,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.white
                                        ),
                                        child: Container(
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
                                                shaderCallback: (rect) {
                                                  return SweepGradient(
                                                      startAngle: 0.1,
                                                      endAngle: 3.14 * 2,
                                                      stops: [value, value],
                                                      center: Alignment.center,
                                                      colors: [
                                                        Colors.white,
                                                        Colors.transparent
                                                      ]).createShader(rect);
                                                },
                                                child: Container(
                                                  width: 100,
                                                  height: 200,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle, color: tealColor),
                                                ),
                                              ),
                                              Center(
                                                child: Container(
                                                  width: 80,
                                                  height: 100,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle, color: whiteColor),
                                                ),
                                              ),
                                              Center(
                                                child: Container(
                                                  width: 70,
                                                  height: 70,
                                                  decoration: BoxDecoration(
                                                      shape: BoxShape.circle, color: tealColor),
                                                  child: Center(
                                                    child: Text(
                                                      "$percentage%",
                                                      style: TextStyle(
                                                          fontSize: 20, color: whiteColor),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      );
                                    },
                                  ),
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
              );
            },
          )
        ),
      ),
    );
  }
}
