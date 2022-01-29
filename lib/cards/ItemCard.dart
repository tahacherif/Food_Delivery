import '../../models/item.dart';
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final Item item;
  final Function() order; //

  ItemCard(
      {required this.item , required this.order}
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
            icon: Icon(Icons.star, color: Colors.green.shade400),
            color: Colors.orange,
            iconSize: 20.0,
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
              Icons.check,
              color: Colors.black,
              size: 24.0,
            ),
            label: Text('Order now'),
            style: ElevatedButton.styleFrom(
              primary: Colors.red, // background
              onPrimary: Colors.yellow, // foreground
            ),
            onPressed : order,

          )
        ],
      ),
    );
  }
}
