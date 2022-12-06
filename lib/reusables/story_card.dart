import 'package:flutter/material.dart';

class Story_Card extends StatelessWidget {
  Story_Card({Key? key, required this.username, required this.imgURL})
      : super(key: key);
  String username;
  String imgURL;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 15, left: 7),
      height: 120,
      width: 65,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(13),
          color: Colors.grey,
          image: DecorationImage(image: AssetImage(imgURL), fit: BoxFit.cover)),
      child: Container(
          margin: EdgeInsets.only(top: 93, left: 5),
          child: Text(username,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w700))),
    );
  }
}
