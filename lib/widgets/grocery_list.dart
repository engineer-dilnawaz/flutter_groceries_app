import 'package:flutter/material.dart';
import 'package:flutter_groceries_app/data/dummy_items.dart';
import 'package:flutter_groceries_app/widgets/grocery_item.dart';

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
