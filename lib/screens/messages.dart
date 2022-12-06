import 'package:assignment4/reusables/message_card.dart';
import 'package:assignment4/screens/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Messages extends StatefulWidget {
  const Messages({super.key});

  @override
  State<Messages> createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(top: 15, left: 15),
              child: Text(
                'New Messages',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700),
              ),
            ),
            Reusable_Message(
                username: 'Mowliid Laba Afle',
                message: 'Asc see tahay sxb',
                time: '3:19',
                userImg:
                    'https://images.pexels.com/photos/13243820/pexels-photo-13243820.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
            Reusable_Message(
              username: 'Jama Ali',
              message: 'Waan arkey',
              time: '1:01',
              userImg:
                  'https://images.pexels.com/photos/14529548/pexels-photo-14529548.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            ),
            Reusable_Message(
                username: 'Farah Bashir',
                message: 'You: Waan imid sxb',
                time: '12:55',
                userImg:
                    'https://images.pexels.com/photos/13946616/pexels-photo-13946616.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
            Reusable_Message(
                username: 'Mohamud Ahmed',
                message: 'see tahay sxb',
                time: '12:39',
                userImg:
                    'https://images.pexels.com/photos/12234581/pexels-photo-12234581.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
            Reusable_Message(
                username: 'Faisal Mohamed',
                message: 'keep it',
                time: '12:11',
                userImg:
                    'https://images.pexels.com/photos/13959380/pexels-photo-13959380.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load'),
            Reusable_Message(
              username: 'Abdi Bile',
              message: 'haye insha Allah',
              time: '11:51',
              userImg:
                  'https://images.pexels.com/photos/13415559/pexels-photo-13415559.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            ),
          ],
        ),
      ),
    );
  }
}
