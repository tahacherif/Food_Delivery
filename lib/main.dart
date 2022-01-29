import 'package:miniprojet/pages/page1.dart';
import 'package:miniprojet/pages/page2.dart';
import 'package:miniprojet/pages/page3.dart';
import 'package:miniprojet/pages/page4.dart';

import 'package:flutter/material.dart';
import 'package:miniprojet/pages/page5.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Food Delivery', routes: {
      "/": (context) => const MaPremierePage(),
      "/deuxieme": (context) => const MaDeuxiemePage(),
      "/troisieme": (context) => MatroisiemePage(),
      "/quatrieme": (context) => MaquatriemePage(),
      "/cinquieme": (context) => const MacinquiemePage(),

    }
    );
  }
}
