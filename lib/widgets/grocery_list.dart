import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/data/dummy_items.dart';

class GroceryList extends StatelessWidget {
  const GroceryList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Your Groceries')),
      body: ListView.builder(
        itemCount: groceryItems.length,
        itemBuilder: (ctx, index) {
          return GroceryItem(
            title: groceryItems[index].name,
            color: groceryItems[index].category.color,
            quantity: groceryItems[index].quantity.toString(),
          );
        },
      ),
    );
  }
}

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
