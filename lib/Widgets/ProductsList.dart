import 'package:flutter/material.dart';
import 'package:stockcontrolflutter/Models/Product.dart';
import 'package:stockcontrolflutter/Widgets/productListElement.dart';

class ProductList extends StatefulWidget {
  final List<Product> _products;
  final Function _addStock;

  ProductList(this._products, this._addStock);

  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (ctx, index) {
        return ProductListElement(
          widget._products[index].id,
          widget._products[index].name,
          widget._products[index].stock,
          widget._addStock,
        );
      },
      itemCount: widget._products.length,
    );
  }
}
