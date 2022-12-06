import 'package:assignment4/examle_screens/about.dart';
import 'package:assignment4/examle_screens/home.dart';
import 'package:assignment4/examle_screens/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Examples extends StatefulWidget {
  const Examples({super.key});

  @override
  State<Examples> createState() => _ExamplesState();
}

class _ExamplesState extends State<Examples> {
  @override
  int index = 0;

  List<Widget> screens = [
    MyHome(),
    Profile(),
    About(),
  ];
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Examples'),
          bottom: TabBar(tabs: [
            Icon(Icons.home),
            Icon(Icons.photo_album),
            Icon(Icons.person),
            Icon(Icons.settings),
          ]),
        ),
        body: TabBarView(children: [
          Text('Home'),
          Text('Photos'),
          Text('Profile'),
          Text('Settings'),
        ]),
        // body: screens[index],
        // bottomNavigationBar: BottomNavigationBar(
        //   onTap: ((value) => {
        //         setState(
        //           () => {index = value},
        //         )
        //       }),
        //   currentIndex: index,
        //   items: [
        //     BottomNavigationBarItem(
        //       label: 'Home',
        //       icon: Icon(Icons.home),
        //     ),
        //     BottomNavigationBarItem(
        //       label: 'Profile',
        //       icon: Icon(Icons.person),
        //     ),
        //     BottomNavigationBarItem(
        //       icon: Icon(Icons.settings),
        //       label: 'About',
        //     )
        //   ],
        // ),
      ),
    );
  }
}
