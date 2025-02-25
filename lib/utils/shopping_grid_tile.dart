import 'package:flutter/material.dart';

class ShoppingGridTile extends StatelessWidget {
  const ShoppingGridTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue, // color of grid items
      child: Center(
        child: Text(
          'Grid1',
          style: TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
    );
  }
}
