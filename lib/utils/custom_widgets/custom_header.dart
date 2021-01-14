import 'package:flutter/material.dart';
import 'package:medical/utils/colors_file.dart';

class CustomHeader extends StatelessWidget {

  final String title;
  CustomHeader({this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      margin: EdgeInsets.only(left: 20),
      child: Row(
        children: [
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: blackColor,
            )
          ),
          SizedBox(width: MediaQuery.of(context).size.width/5),
          Text(title, style: TextStyle(color:blackColor, fontSize: 21)),
        ],
      ),
    );
  }
}
