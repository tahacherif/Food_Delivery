
import 'package:flutter/material.dart';
import 'package:miniprojet/models/item.dart';
class order {
  Item? item;
  static int nbr = 0;
  static List<Item> orders = [];

  static add(Item i) {
    int n = i.getId();
    return "N° $n";
  }
}