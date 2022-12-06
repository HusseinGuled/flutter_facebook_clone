import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Resuable_Post extends StatelessWidget {
  Resuable_Post(
      {Key? key,
      required this.username,
      required this.userImg,
      required this.postText,
      required this.postImg,
      required this.waqti,
      required this.likes,
      required this.comments,
      required this.shares})
      : super(key: key);
  String username;
  String userImg;
  String postText;
  String postImg;
  String waqti;
  int likes;
  int comments;
  int shares;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(children: [
            Container(
              height: 40,
              width: 40,
              margin: EdgeInsets.only(left: 13),
              child: ClipOval(
                child: Image.asset(
                  userImg,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text(username,
                        style: TextStyle(fontWeight: FontWeight.w600))),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.only(left: 10), child: Text(waqti)),
                    SizedBox(
                      width: 5,
                    ),
                    Text('.'),
                    SizedBox(
                      width: 5,
                    ),
                    Icon(
                      FontAwesomeIcons.globe,
                      size: 11,
                    ),
                    SizedBox(
                      width: 125,
                    ),
                    Icon(Icons.more_horiz),
                    SizedBox(width: 5),
                    Icon(Icons.close),
                  ],
                ),
              ],
            ),
          ]),
          SizedBox(
            height: 19,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 3),
                      child: Text(
                        postText,
                      )),
                  Container(
                    margin: EdgeInsets.only(top: 5, bottom: 10),
                    width: 295,
                    height: 150,
                    // color: Colors.black,
                    child: Image(
                      image: NetworkImage(
                        postImg,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: 10, bottom: 15),
                        height: 30,
                        width: 80,
                        decoration: BoxDecoration(
                            color: Color.fromARGB(255, 188, 187, 187),
                            borderRadius: BorderRadius.circular(20)),
                        child: Row(children: [
                          Container(
                            margin: EdgeInsets.only(left: 15),
                            child: Icon(
                              Icons.thumb_up_alt_rounded,
                              color: Color.fromARGB(255, 255, 254, 254),
                              size: 17,
                            ),
                          ),
                          Container(
                              margin: EdgeInsets.only(left: 5),
                              child: Text(likes.toString(),
                                  style: TextStyle(
                                      color: Color.fromARGB(255, 97, 91, 91),
                                      fontWeight: FontWeight.w600)))
                        ]),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 10, bottom: 15),
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 188, 187, 187),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Icon(
                                FontAwesomeIcons.comment,
                                color: Color.fromARGB(255, 255, 254, 254),
                                size: 17,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(comments.toString(),
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 97, 91, 91),
                                        fontWeight: FontWeight.w600)))
                          ])),
                      Container(
                          margin: EdgeInsets.only(left: 10, bottom: 15),
                          height: 30,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 188, 187, 187),
                              borderRadius: BorderRadius.circular(20)),
                          child: Row(children: [
                            Container(
                              margin: EdgeInsets.only(left: 15),
                              child: Icon(
                                FontAwesomeIcons.share,
                                color: Color.fromARGB(255, 255, 254, 254),
                                size: 17,
                              ),
                            ),
                            Container(
                                margin: EdgeInsets.only(left: 5),
                                child: Text(shares.toString(),
                                    style: TextStyle(
                                        color: Color.fromARGB(255, 97, 91, 91),
                                        fontWeight: FontWeight.w600)))
                          ])),
                    ],
                  ),
                ],
              ),
            ],
          ),
          Divider(color: Colors.black)
        ],
      ),
    );
  }
}
