
import 'package:flutter/material.dart';

class Item {
  String name = "";
  String restaurant="";
  String image="";
  int ID = 0;


  Item(int id , String t , String a , String i){
    name = t;
    ID = id;
    restaurant = a;
    image=i;
  }
  @override
  toString(){
    return " :  '$name'  '$restaurant' '$image' ";

  }
  int getId(){
    return ID;
  }
}