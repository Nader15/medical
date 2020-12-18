import 'package:flutter/material.dart';
import 'package:medical/utils/colors_file.dart';
class DonateWidget extends StatelessWidget {
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
                  color: Colors.red,
                  image: DecorationImage(
                      image: AssetImage("images/patient.jpg"),
                      fit: BoxFit.cover)),
              child: Stack(
                children: [
                  Opacity(
                    opacity: 0.5,
                    child: Container(
                        decoration: BoxDecoration(
                          color: Colors.teal,
                        )),
                  ),
                  Opacity(
                      opacity: 0.6,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter,
                              colors: [
                                Colors.transparent,
                                Colors.black,
                              ]),
                        ),
                      )),
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
                                icon: Icon(
                                  Icons.exit_to_app,
                                  color: whiteColor,
                                ),
                              )
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
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
                          SizedBox(
                            height: 30,
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
                                ],
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
            Center(
              child: Padding(
                padding: const EdgeInsets.only(top: 260),
                child: Container(
                  padding: EdgeInsets.all(20),
                  width: 400,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20),
                      )),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("To be raised"),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          "\$20,000",
                          style: TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: 250,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Reached",
                                    style: TextStyle(
                                        color: Colors.orange.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "\$ 11,600",
                                    style: TextStyle(
                                        color: Colors.orange.shade700,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Remaining",
                                    style: TextStyle(
                                        color: Colors.orange.shade700,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "\$ 8,400",
                                    style: TextStyle(
                                        color: Colors.orange.shade700,
                                        fontSize: 25,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              )
                            ],
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
                              "About the case",
                              style: TextStyle(fontSize: 25),
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
                        SizedBox(
                          height: 20,
                        ),
                        Container(
                          height: 110,
                          child: Text(
                            "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum",
                            style: TextStyle(fontSize: 15),
                          ),
                        ),
                        SizedBox(height: 20,),
                        Center(
                          child: RaisedButton(
                            padding: EdgeInsets.only(left: 110, right: 110,top: 15,bottom: 15),
                            onPressed: () {},
                            color: primaryAppColor,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10.0)),
                            child: Text(
                              "DONATE NOW",
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
                padding: const EdgeInsets.only(top: 180, right: 10),
                child: TweenAnimationBuilder(
                  tween: Tween(begin: 0.0, end: 0.58),
                  duration: Duration(seconds: 1),
                  builder: (context, value, child) {
                    int percentage = (value * 100).ceil();
                    return Container(
                      height: 130,
                      width: 110,
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
                                    shape: BoxShape.circle, color: Colors.teal),
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
                                    shape: BoxShape.circle, color: Colors.teal),
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
              ),
            )
          ],
        ),
      ),
    );
  }
}
