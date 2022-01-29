import '../../models/partenaire.dart';
import 'package:flutter/material.dart';

class PartenaireCard extends StatelessWidget {
  final Partenaire partenaire;

  PartenaireCard(
      {required this.partenaire}
      );
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20.0, 20.0, 20.0, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: [
          SizedBox(height: 6),
          CircleAvatar(
            backgroundImage: AssetImage(partenaire.image),

          radius: 70,),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.place, color: Colors.black),
            color: Colors.orange,
            iconSize: 20.0,
          ),
          SizedBox(height: 8.0),

          SizedBox(height: 8.0,),
          Text(partenaire.name,
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.blueGrey,

              )
          ),

        ],
      ),
    );
  }
}