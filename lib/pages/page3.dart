import 'package:flutter/material.dart';
import '../models/user.dart';

class MatroisiemePage extends StatefulWidget {
  @override
  _MatroisiemePageState createState() => _MatroisiemePageState();
}

class _MatroisiemePageState extends State<MatroisiemePage> {
  final _formKey = GlobalKey<FormState>();
  final _user = User();

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        appBar: AppBar(title: Text('Profil utilisateur')
        ,
          backgroundColor: Colors.orange,
        ),

        body: Container(
            padding:
            const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
            child: Builder(
                builder: (context) => Form( //car on a besoin de builder le formulaire sur le Widget parent
                    key: _formKey,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            child: TextFormField(
                              decoration:
                              InputDecoration(hintText: 'Prénom'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Merci de saisir votre prénom';
                                }
                              },
                              onSaved: (value) =>
                                  setState(() => _user.prenom = value!),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                                decoration:
                                InputDecoration(hintText: 'Nom'),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Merci de saisir votre nom';
                                  }
                                },
                                onSaved: (value) =>
                                    setState(() => _user.nom = value!)),
                          ),
                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                              child: Text('Repas Commandés' , style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 20) ,),
                            ),
                          ),

                          Expanded(
                            child: CheckboxListTile(
                                title: const Text('Petit Dejeuner'),
                                value: _user.passions[User.petitdej],
                                onChanged: (value) {
                                  setState(() =>
                                  _user.passions[User.petitdej] = value!);
                                }),
                          ),
                          Expanded(
                            child: CheckboxListTile(
                                title: const Text('Repas'),
                                value: _user.passions[User.repas],
                                onChanged: (value) {
                                  setState(() => _user
                                      .passions[User.repas] = value!);
                                }),
                          ),
                          Expanded(
                            child:  CheckboxListTile(
                                title: const Text('Diner'),
                                value: _user.passions[User.diner  ],
                                onChanged: (value) {
                                  setState(() =>
                                  _user.passions[User.diner] = value!);
                                }),
                          ),

                          Expanded(
                            child: Container(
                              padding: const EdgeInsets.fromLTRB(0, 30, 0, 20),
                              child: Text('Livraison Sur',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  fontSize: 20) ,
                              ),
                            ),
                          ),

                          Expanded(
                            child:  CheckboxListTile(
                                title: const Text('Sfax ville'),
                                value: _user.lieu[User.Sfax_ville],
                                onChanged: (value) {
                                  setState(() =>
                                  _user.lieu[User.Sfax_ville] = value!);
                                }),
                          ),
                          Expanded(
                            child:  CheckboxListTile(
                                title: const Text('Bonlieu de sfax'),
                                value: _user.lieu[User.Bonlieu],
                                onChanged: (value) {
                                  setState(() =>
                                  _user.lieu[User.Bonlieu] = value!);
                                }),
                          ),
                          Expanded(
                            child:  Container(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 16.0, horizontal: 16.0),

                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.orange, // background
                                       // foreground
                                    ),
                                    onPressed: () {
                                      final form = _formKey.currentState;
                                      if (form!.validate()) {
                                        form.save();
                                        _user.save();
                                        affichage(context);
                                      }
                                    },
                                    child: Text('Enregistrer'))),
                          ), ]
                    ))))
    );
  }
  affichage(BuildContext context) {
    //Scaffold.of(context)
    final snackBar = SnackBar(content: Text('***Soumission du formulaire***'));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    //.showSnackBar(SnackBar(content: Text('Submitting form')));
  }
}
