import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../reusables/request_card.dart';

class Users extends StatefulWidget {
  const Users({super.key});

  @override
  State<Users> createState() => _UsersState();
}

class _UsersState extends State<Users> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:
            Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Container(
              margin: EdgeInsets.only(top: 15, left: 15),
              child: Text('Friend Requests',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700))),
          Reusable_Request(
            username: 'Zakarie Mohamud',
            userImg:
                'https://images.pexels.com/photos/14411114/pexels-photo-14411114.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            mtFriends: 33,
            goorta: '3w',
          ),
          Reusable_Request(
            username: 'Mohamed Ahmed',
            userImg:
                'https://images.pexels.com/photos/13355624/pexels-photo-13355624.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            mtFriends: 12,
            goorta: '1y',
          ),
          Reusable_Request(
            username: 'Farah Jama',
            userImg:
                'https://images.pexels.com/photos/13070533/pexels-photo-13070533.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            mtFriends: 3,
            goorta: '6d',
          ),
          Reusable_Request(
            username: 'Guled Farah',
            userImg:
                'https://images.pexels.com/photos/14127944/pexels-photo-14127944.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            mtFriends: 90,
            goorta: '1d',
          ),
          Reusable_Request(
            username: 'Abdulkadir Mohamed',
            userImg:
                'https://images.pexels.com/photos/14175961/pexels-photo-14175961.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            mtFriends: 59,
            goorta: '1w',
          ),
          Reusable_Request(
            username: 'Ayan Hassan',
            userImg:
                'https://images.pexels.com/photos/11153477/pexels-photo-11153477.jpeg?auto=compress&cs=tinysrgb&w=600&lazy=load',
            mtFriends: 28,
            goorta: '2d',
          ),
        ]),
      ),
    );
  }
}
