import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              child: Text(
                  'This is an about part of a test app \nThis is an about part of a test app \nThis is an about part of a test app \nThis is an about part of a test app',
                  style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.w600)))),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (_) => AlertDialog(
                  title: Text('My APP'), content: Text('This is a test app')));
        },
        child: Icon(Icons.info),
      ),
    );
  }
}
