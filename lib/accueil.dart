// ignore_for_file: file_names

import 'package:flutter/material.dart';

class Accueil extends StatefulWidget {
  @override
  State<Accueil> createState() => _AccueilState();
}

class _AccueilState extends State<Accueil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: <Widget>[
        GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/Dino');
            },
            child: Card(child: ListTile(title: Text('Le jeux du Dino')))),
      ],
    ));
  }
}
