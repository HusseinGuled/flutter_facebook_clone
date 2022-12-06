import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Container(height: 100, width: 90, color: Colors.purple),
            SizedBox(width: 5),
            Container(height: 100, width: 90, color: Colors.purple),
            SizedBox(width: 5),
            Container(height: 100, width: 90, color: Colors.purple),
          ],
        ),
      ),
    );
  }
}
