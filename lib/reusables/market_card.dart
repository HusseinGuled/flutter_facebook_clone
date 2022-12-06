import 'package:flutter/material.dart';

class Reusable_marketCard extends StatelessWidget {
  Reusable_marketCard(
      {Key? key,
      required this.itemImg,
      required this.itemName,
      required this.price})
      : super(key: key);
  String itemImg;
  String itemName;
  int price;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 7,
      ),
      child: Row(
        children: [
          Container(
            child: Column(
              children: [
                Container(
                  height: 100,
                  width: 145,
                  child: Image.network(
                    itemImg,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  child: Text('\$ ${price}',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                      )),
                ),
                Container(
                  child: Text(itemName),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
