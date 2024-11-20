import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String title;

  ProductPage({required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        backgroundColor: Colors.purple,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text("$title - Product 1"),
            subtitle: Text("\$25.99"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                // Implement Add to Cart functionality here
              },
            ),
          ),
          ListTile(
            title: Text("$title - Product 2"),
            subtitle: Text("\$18.99"),
            trailing: IconButton(
              icon: Icon(Icons.add_shopping_cart),
              onPressed: () {
                // Implement Add to Cart functionality here
              },
            ),
          ),
          // Add more products here
        ],
      ),
    );
  }
}
