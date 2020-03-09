import 'package:flutter/material.dart';

class ProductListElement extends StatelessWidget {
  final int id;
  final String text;
  final int stock;
  final Function _addStock;

  ProductListElement(this.id, this.text, this.stock, this._addStock);
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
      elevation: 5,
      child: ListTile(
        title: Text(
          text,
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text("En stock: $stock"),
        trailing: Container(
          width: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.add),
                iconSize: 20,
                onPressed: () {
                  _addStock(id, 1);
                },
              ),
              IconButton(
                icon: Icon(Icons.remove),
                iconSize: 20,
                onPressed: () {
                  _addStock(id, -1);
                },
              ),
            ],
          ),
        ),
        onLongPress: () {},
      ),
    );
  }
}
