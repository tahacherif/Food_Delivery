import 'package:flutter/material.dart';
import 'package:miniprojet/cards/ItemCard.dart';
import 'package:miniprojet/models/item.dart';
import 'package:miniprojet/models/order.dart';

class MaDeuxiemePage extends StatefulWidget {
  const MaDeuxiemePage({Key? key}) : super(key: key);

  @override
  State<MaDeuxiemePage> createState() => _MaDeuxiemePageState();
}
var orders = [];
class _MaDeuxiemePageState extends State<MaDeuxiemePage> {
  @override
  Widget build(BuildContext context) {
    List<Item> listOfItems= [
      Item(1,"Burger","KFC", "images/Burger.jpg"),
      Item(2,"Pizza","tonton","images/pizza.jpg"),
      Item(3,"Frites","Sandiwch Lotfi","images/frite.png")
      ];
    return Scaffold(
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                child: CircleAvatar(
                  backgroundImage: AssetImage('images/Food-Delivery.jpeg'),
                ),
                decoration: BoxDecoration(
                  color: Colors.orange,
                ),
                //child: Text('Drawer Header'),
              ),
              ListTile(
                title: const Text('Description de Food Delivery'),
                onTap: () {
                  // Update the state of the app
                  // ...
                  // Then close the drawer
                  Navigator.pushNamed(context, '/');
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Nos Menu'),
                onTap: () {
                  Navigator.pushNamed(context, '/deuxieme');
                },
              ),
              ListTile(
                title: const Text('Nos Partenaires'),
                onTap: () {
                  /* showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('Option Numéro 2'),
                          content: Text('Message a afficher de l\'option 2'),
                        )); */
                  Navigator.pushNamed(context, '/quatrieme');
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Inscription a la liveraison a domicile'),
                onTap: () {
                  /* showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('Option Numéro 2'),
                          content: Text('Message a afficher de l\'option 2'),
                        )); */
                  Navigator.pushNamed(context, '/troisieme');
                  //Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Historique de liveraison'),
                onTap: () {
                  /* showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                          title: Text('Option Numéro 2'),
                          content: Text('Message a afficher de l\'option 2'),
                        )); */
                  Navigator.pushNamed(context, '/cinquieme');
                  //Navigator.pop(context);
                },
              ),
            ],
          ),
        ),    //backgroundColor: Colors.yellow,
        appBar: AppBar(
          title: Text('Food Delivery'),
          centerTitle: true,
          backgroundColor: Colors.orange,
        ),
        body: Center(
         child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
           children: listOfItems.map((item) => ItemCard(
               item: item,
               order: () {
                 setState(() {
                   order.orders.add(item);
                 });
               }
           )).toList(),
          ),
        ));
  }
}
