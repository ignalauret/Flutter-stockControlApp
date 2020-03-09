import 'package:flutter/material.dart';
import 'package:stockcontrolflutter/Models/Product.dart';

class ProductDetail extends StatelessWidget {
  final Product _product;
  final Function _close;

  ProductDetail(this._product, this._close);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: <Widget>[
          Text(
            "${_product.name}",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text("Pecio de venta: ${_product.price}"),
          RaisedButton(
            onPressed: () {
              _close();
            },
            child: Text("Cerrar"),
          )
        ],
      ),
    );
  }
}
