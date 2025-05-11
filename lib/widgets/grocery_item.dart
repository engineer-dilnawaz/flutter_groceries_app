import 'package:flutter/material.dart';

class GroceryItem extends StatelessWidget {
  const GroceryItem({
    super.key,
    required this.title,
    required this.color,
    required this.quantity,
  });

  final String title;
  final Color color;
  final String quantity;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Container(width: 24, height: 24, color: color),
      trailing: Text(quantity),
    );
  }
}
