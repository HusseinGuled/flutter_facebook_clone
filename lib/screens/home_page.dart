import 'package:assignment4/reusables/story_card.dart';
import 'package:assignment4/screens/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../reusables/post_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(children: [
          Divider(
            color: Colors.black,
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(left: 7),
                child: ClipOval(
                  child: Image.asset('assets/images/me.jfif',
                      height: 40, width: 40),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                height: 40,
                width: 190,
                decoration: BoxDecoration(
                    border: Border.all(width: 2, color: Colors.white),
                    color: Color.fromARGB(255, 206, 203, 203),
                    borderRadius: BorderRadius.circular(14)),
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(bottom: 13, left: 5),
                    border: InputBorder.none,
                    hintText: "What's on your mind?",
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                      margin: EdgeInsets.only(left: 15, top: 1),
                      child: Icon(Icons.photo)),
                  Container(
                      margin: EdgeInsets.only(top: 23, left: 9),
                      child: Text('Photo'))
                ],
              ),
            ],
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 9),
                height: 120,
                width: 65,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(13),
                    color: Color.fromARGB(255, 224, 221, 221)),
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(13),
                        topRight: Radius.circular(13),
                      ),
                      child: Image.asset(
                        'assets/images/me.jfif',
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 50, left: 19),
                      height: 25,
                      width: 25,
                      alignment: Alignment.topCenter,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(50),
                      ),
                      child: Icon(Icons.add, color: Colors.white),
                    ),
                    Container(
                        margin: EdgeInsets.only(top: 75, left: 10),
                        child: Text('Add to story',
                            style: TextStyle(fontWeight: FontWeight.w600)))
                  ],
                ),
              ),
              Story_Card(
                username: 'Hussein Mohamed',
                imgURL: 'assets/images/Hussein.jpg',
              ),
              Story_Card(
                username: 'Dahir M Qacle',
                imgURL: 'assets/images/Dahir.jpg',
              ),
              Story_Card(
                username: 'Mohamed Sahal',
                imgURL: 'assets/images/team.jpg',
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Resuable_Post(
                  username: 'Hussein Mohamed',
                  userImg: 'assets/images/me.jfif',
                  postText: 'Coding over time...😍👌',
                  waqti: '1h',
                  likes: 130,
                  comments: 90,
                  shares: 70,
                  postImg:
                      'https://images.pexels.com/photos/5483071/pexels-photo-5483071.jpeg?auto=compress&cs=tinysrgb&w=600',
                ),
                Resuable_Post(
                  username: 'Dahir Qacle',
                  userImg: 'assets/images/Dahir.jpg',
                  postText: 'jimco wanaagsan',
                  waqti: '2h',
                  likes: 77,
                  comments: 300,
                  shares: 10,
                  postImg:
                      'https://images.pexels.com/photos/56866/garden-rose-red-pink-56866.jpeg?auto=compress&cs=tinysrgb&w=600',
                ),
                Resuable_Post(
                    username: 'Mohamed Sahal',
                    userImg: 'assets/images/team.jpg',
                    postText: 'Dhulkeenu waa barwaaqo',
                    waqti: '3h',
                    likes: 33,
                    comments: 100,
                    shares: 80,
                    postImg:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-c6uEdC7T14P3S3BilFLW4iFGVMpJ3Axr4dK0Ls3_YZgYkLMorVvpBV4QZ9Gbd9oaDGc&usqp=CAU'),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
