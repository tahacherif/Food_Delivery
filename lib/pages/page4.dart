import 'dart:ui';
import 'package:miniprojet/cards/partenairesCard.dart';
import '/models/partenaire.dart';
import 'package:flutter/material.dart';


class MaquatriemePage extends StatefulWidget {

  @override
  State<MaquatriemePage> createState() => _MaquatriemePageState();
}

class _MaquatriemePageState extends State<MaquatriemePage> {
  @override
  List<Partenaire> listOfPartenaires= [
    Partenaire("Mechmecha","images/mechmecha.png"),
    Partenaire("KFC", "images/th.jpg"),
    Partenaire("Lablebi Lotfi","images/lablebi.jpg"),
    Partenaire("Mcdonalds","images/mc.jpg")
  ];
  Widget build(BuildContext context) {


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
        ),   //backgroundColor: Colors.yellow,   //backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Nos partenaires'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: listOfPartenaires.map((partenaire) => PartenaireCard(
            partenaire: partenaire,

        )).toList(),
      ),
    )
    );
  }
}


