import 'package:flutter/material.dart';

class Reusable_Message extends StatelessWidget {
  Reusable_Message(
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
      margin: EdgeInsets.only(
        bottom: 2,
      ),
      child: Row(
        children: [
          Container(
            height: 60,
            width: 60,
            margin: EdgeInsets.only(left: 20, top: 20),
            child: ClipOval(
              child: Image.network(
                userImg,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                  margin: EdgeInsets.only(left: 9, top: 13),
                  child: Text(
                    username,
                    style: TextStyle(fontWeight: FontWeight.w700, fontSize: 15),
                  )),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      message,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(
                      '.',
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5),
                    child: Text(
                      time,
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w700),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
