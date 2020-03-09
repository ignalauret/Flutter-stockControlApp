import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:stockcontrolflutter/Models/Product.dart';
import 'package:stockcontrolflutter/Widgets/HomeScreenHeader.dart';
import 'package:stockcontrolflutter/Widgets/ProductsList.dart';
import 'package:stockcontrolflutter/Widgets/productListElement.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var Products = [
    Product(
      1,
      "Coca cola",
      25.99,
      Icon(Icons.local_drink),
      5,
    ),
    Product(
      2,
      "Lomito",
      155.99,
      Icon(Icons.fastfood),
      10,
    ),
  ];

  void _addStock(int id, int amount) {
    setState(() {
      Products.firstWhere((prod) {
        return prod.id == id;
      }).stock += amount;
    });
  }

  void showDetail() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.menu),
          iconSize: 30.0,
          color: Colors.white,
          onPressed: () {},
        ),
        title: Text(
          'Stock',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            iconSize: 30.0,
            color: Colors.white,
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: <Widget>[
          HomeScreenHeader(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30.0),
                  topRight: Radius.circular(30.0),
                ),
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 25, top: 20, bottom: 18),
                      child: Text(
                        "Productos",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ProductList(Products, _addStock),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
