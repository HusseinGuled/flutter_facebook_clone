import 'package:assignment4/reusables/notification_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Notifications extends StatelessWidget {
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(top: 10, bottom: 9),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(top: 15, left: 15),
                child: Text(
                  'Notifications',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
                ),
              ),
              Reusable_Notification(
                username: 'Mohamed Sahal',
                message: 'likes your comment : "shaqo wacan sxb" ',
                time: '11 minutes ago',
                userImg: 'assets/images/team.jpg',
              ),
              Reusable_Notification(
                username: 'Dahir Qacle',
                message: 'shares your post ',
                time: '30 minutes ago',
                userImg: 'assets/images/Dahir.jpg',
              ),
              Reusable_Notification(
                username: 'Mohamed Mohamud',
                message: 'shared your post',
                time: '29 minutes ago',
                userImg: 'assets/images/code.jpeg',
              ),
              Reusable_Notification(
                username: 'Mohamed Sahal',
                message: 'mentioned you in a comment',
                time: '50 minutes ago',
                userImg: 'assets/images/team.jpg',
              ),
              Reusable_Notification(
                username: 'Dahir Qacle',
                message: 'and 20 others react your comment',
                time: '30 minutes ago',
                userImg: 'assets/images/Dahir.jpg',
              ),
              Reusable_Notification(
                username: 'Mohamed Mohamud',
                message: 'follows you',
                time: '1 hour ago',
                userImg: 'assets/images/code.jpeg',
              ),
              Reusable_Notification(
                username: 'Mohamed Sahal',
                message: 'shared your post',
                time: '2 hours ago',
                userImg: 'assets/images/team.jpg',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
