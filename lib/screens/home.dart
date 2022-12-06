import 'package:assignment4/screens/home_page.dart';
import 'package:assignment4/screens/market_place.dart';
import 'package:assignment4/screens/messages.dart';
import 'package:assignment4/screens/notifications.dart';
import 'package:assignment4/screens/users.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          titleSpacing: 12,
          title: Text(
            'Facebook',
            style: TextStyle(
              color: Colors.blue,
            ),
          ),
          backgroundColor: Colors.white,
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            IconButton(
              onPressed: (() {}),
              icon: Icon(
                Icons.menu,
                color: Colors.black,
              ),
            ),
            SizedBox(width: 20),
          ],
          bottom: TabBar(
            unselectedLabelColor: Colors.black,
            labelColor: Colors.blue,
            indicator: BoxDecoration(),
            tabs: [
              Icon(
                Icons.home,
                size: 29,
              ),
              Icon(FontAwesomeIcons.user),
              Icon(FontAwesomeIcons.facebookMessenger),
              Icon(FontAwesomeIcons.bell),
              Icon(Icons.business_center_sharp),
            ],
          ),
          elevation: 0,
        ),
        body: TabBarView(children: [
          HomePage(),
          Users(),
          Messages(),
          Notifications(),
          MarketPlace()
        ]),
      ),
    );
  }
}
