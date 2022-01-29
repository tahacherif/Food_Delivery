import 'package:miniprojet/models/order.dart';

import '../../models/item.dart';
import 'package:flutter/material.dart';

class orderCard extends StatelessWidget {
  final Item item;
  final Function() delete; //
  orderCard(
      {required this.item , required this.delete}
      );
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.check, color: Colors.green.shade400),
            color: Colors.orange,
            iconSize: 20.0,
          ),
          Text(order.add(item),
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blueGrey,

              )
          ),
          Text(item.name,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blueGrey,

              )
          ),
          //Création d'un espace entre les widgets
          SizedBox(height: 6),

          Text(item.restaurant,
              style: TextStyle(
                color: Colors.black,
                fontSize: 14.0,
              )),
          SizedBox(height: 8.0),
          SizedBox(height: 6),
          CircleAvatar(
            backgroundImage: AssetImage(item.image
            ), radius: 70,
          ),
          SizedBox(height: 8.0,),
          ElevatedButton.icon(
            icon: Icon(
              Icons.delete,
              color: Colors.black,
              size: 24.0,
            ),
            label: Text('remove Order'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // background
              onPrimary: Colors.yellow, // foreground
            ),
            onPressed : delete,

          )
        ],
      ),
    );
  }
}
