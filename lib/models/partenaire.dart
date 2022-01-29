
import 'package:flutter/material.dart';

class Partenaire {
  String name = "";
  String image="";

  Partenaire(String t , String i){
    name = t;
    image=i;
  }
  @override
  toString(){
    return " :  '$name'  '$image' ";

  }
}