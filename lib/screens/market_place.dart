import 'package:assignment4/reusables/market_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class MarketPlace extends StatefulWidget {
  const MarketPlace({super.key});

  @override
  State<MarketPlace> createState() => _MarketPlaceState();
}

class _MarketPlaceState extends State<MarketPlace> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 15),
                    child: Text(
                      'MarketPlace',
                      style: TextStyle(
                        fontSize: 17,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(
                      left: 120,
                    ),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 29,
                      ),
                      onPressed: (() {}),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    height: 30,
                    width: 30,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: Color.fromARGB(255, 174, 173, 173)),
                    margin: EdgeInsets.only(left: 15),
                    child: Icon(Icons.person),
                  ),
                  Container(
                    height: 27,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 174, 173, 173)),
                    margin: EdgeInsets.only(left: 15),
                    child: Text('Inbox',
                        style: TextStyle(fontWeight: FontWeight.w700)),
                  ),
                  Container(
                    height: 27,
                    width: 50,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 174, 173, 173)),
                    margin: EdgeInsets.only(left: 15),
                    child: Text('Sell',
                        style: TextStyle(fontWeight: FontWeight.w700)),
                  ),
                  Container(
                    height: 27,
                    width: 90,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Color.fromARGB(255, 174, 173, 173)),
                    margin: EdgeInsets.only(left: 15),
                    child: Text('Categories',
                        style: TextStyle(fontWeight: FontWeight.w700)),
                  ),
                ],
              ),
            ),
            Divider(color: Color.fromARGB(255, 56, 56, 56)),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 10),
                    child: Text("Today's pictures",
                        style: TextStyle(fontWeight: FontWeight.w700)),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    margin: EdgeInsets.only(left: 19),
                    child: Icon(Icons.location_on_outlined, color: Colors.blue),
                  ),
                  Container(
                    child: Text(
                      "Mogadishu  .  60km",
                      style: TextStyle(
                          fontWeight: FontWeight.w700, color: Colors.blue),
                    ),
                  ),
                ],
              ),
            ),
            Row(
              children: [
                Reusable_marketCard(
                  itemImg:
                      'https://images.pexels.com/photos/3780681/pexels-photo-3780681.jpeg?auto=compress&cs=tinysrgb&w=600',
                  price: 22,
                  itemName: 'Earbuds',
                ),
                SizedBox(
                  width: 5,
                ),
                Reusable_marketCard(
                  itemImg:
                      'https://images.pexels.com/photos/236915/pexels-photo-236915.jpeg?auto=compress&cs=tinysrgb&w=600',
                  price: 15,
                  itemName: 'Saacad',
                ),
              ],
            ),
            Row(
              children: [
                Reusable_marketCard(
                  itemImg:
                      'https://images.pexels.com/photos/205421/pexels-photo-205421.jpeg?auto=compress&cs=tinysrgb&w=600',
                  price: 392,
                  itemName: 'Laptop',
                ),
                SizedBox(
                  width: 5,
                ),
                Reusable_marketCard(
                  itemImg:
                      'https://images.pexels.com/photos/131018/pexels-photo-131018.jpeg?auto=compress&cs=tinysrgb&w=600',
                  price: 25,
                  itemName: 'Eyeglass',
                ),
              ],
            ),
            Row(
              children: [
                Reusable_marketCard(
                  itemImg:
                      'https://images.pexels.com/photos/47261/pexels-photo-47261.jpeg?auto=compress&cs=tinysrgb&w=600',
                  price: 200,
                  itemName: 'Samsung',
                ),
                SizedBox(
                  width: 5,
                ),
                Reusable_marketCard(
                  itemImg:
                      'https://images.pexels.com/photos/788946/pexels-photo-788946.jpeg?auto=compress&cs=tinysrgb&w=600',
                  price: 713,
                  itemName: 'Iphone',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
