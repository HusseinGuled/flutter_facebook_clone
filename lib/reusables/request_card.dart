import 'package:flutter/material.dart';

class Reusable_Request extends StatelessWidget {
  Reusable_Request(
      {Key? key,
      required this.username,
      required this.userImg,
      required this.mtFriends,
      required this.goorta})
      : super(key: key);
  String username;
  String userImg;
  int mtFriends;
  String goorta;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 7, top: 7),
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
              Container(
                  margin: EdgeInsets.only(left: 30),
                  child: Text(
                    '${mtFriends} mutual friends',
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w400),
                  )),
              Row(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 20, top: 20),
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Colors.blue),
                      child: TextButton(
                        child: Text(
                          'Confirm',
                          style: TextStyle(color: Colors.white),
                        ),
                        onPressed: (() {}),
                      )),
                  Container(
                      margin: EdgeInsets.only(left: 5, top: 20),
                      width: 75,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Color.fromARGB(255, 198, 198, 198)),
                      child: TextButton(
                        child: Text(
                          'Delete',
                          style: TextStyle(color: Colors.black),
                        ),
                        onPressed: (() {}),
                      )),
                ],
              )
            ],
          ),
          Container(
              margin: EdgeInsets.only(left: 3),
              child: Text(
                goorta,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.w400),
              )),
        ],
      ),
    );
  }
}
