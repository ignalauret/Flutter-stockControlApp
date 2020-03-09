import 'package:flutter/material.dart';

class Product {
  int id;
  String name;
  double price;
  Icon icon;
  int stock;

  Product(this.id, this.name, this.price, this.icon, this.stock);
}