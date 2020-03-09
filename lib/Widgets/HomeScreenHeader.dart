import 'package:flutter/material.dart';

class HomeScreenHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      color: Theme.of(context).primaryColor,
      child: Text(
        "Sucursal: Av. Colón",
        style: TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
