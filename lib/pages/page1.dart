import 'package:flutter/material.dart';
class MaPremierePage extends StatelessWidget {

  const MaPremierePage({Key? key}) : super(key: key);

  @override
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
      ),
      //backgroundColor: Colors.yellow,
      appBar: AppBar(
        title: Text('Food Dilevery'),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(height: 10.0),
                Text ('Food Delivery vous facile la vie et vous livre le menu que vous souhaitez la ou vous serez : un service rapide et de qualité',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    color: Colors.black,
                    letterSpacing: 2.0,
                    fontSize:15.0,
                    fontWeight: FontWeight.bold,
                  ),

                ),
                SizedBox(height: 50.0),

                _Buttoms(),
              ],

            ),
          ),
        ),
      ),
    );
  }
}
class _Buttoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
    margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        CustomButtom(
          iconchoisi: Icons.call,
          nom: 'Appel',
        ),
        CustomButtom(
          iconchoisi: Icons.mail,
          nom: 'MAIL',
        ),
        CustomButtom(
          iconchoisi: Icons.share,
          nom: 'Partage',
        ),
      ],
    ),
  );
}

class CustomButtom extends StatelessWidget {
  final IconData iconchoisi;
  final String nom;

  const CustomButtom({
    required this.iconchoisi,
    required this.nom,
  });

  @override
  Widget build(BuildContext context) => Column(
    children: <Widget>[
      IconButton(
        onPressed: () {},
        icon: Icon(this.iconchoisi, color: Colors.orange.shade400),
        color: Colors.orange,
        iconSize: 30.0,
      ),
      Text(this.nom,
          style: TextStyle(
            color: Colors.orange.shade400,
          )),
    ],
  );
}

