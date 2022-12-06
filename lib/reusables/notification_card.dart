import 'dart:ui';

import 'package:flutter/material.dart';

class Reusable_Notification extends StatelessWidget {
  Reusable_Notification(
      {Key? key,
      required this.username,
      required this.userImg,
      required this.message,
      required this.time})
      : super(key: key);
  String username;
  String userImg;
  String message;
  String time;

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Container(
          height: 60,
          width: 60,
          margin: EdgeInsets.only(left: 20, top: 20),
          child: ClipOval(
            child: Image.asset(
              userImg,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 10, top: 10),
          width: 170,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                textWidthBasis: TextWidthBasis.parent,
                text: TextSpan(
                    text: username,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 15),
                    children: [
                      TextSpan(
                          text: ' ${message}',
                          style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.black))
                    ]),
              ),
              Container(
                margin: EdgeInsets.only(top: 5),
                child: Text(time),
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 9),
          child: Icon(Icons.more_horiz),
        )
      ],
    ));
  }
}
