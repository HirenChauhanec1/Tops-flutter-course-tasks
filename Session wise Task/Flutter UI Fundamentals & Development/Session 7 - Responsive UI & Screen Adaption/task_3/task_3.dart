import 'package:flutter/material.dart';

class ProductGrid extends StatelessWidget {
  const ProductGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.blue),
      body: Center(
        child: Column(
          spacing: 10,
          children: [
            Row(
              spacing: 10,
              children: [
                Expanded(child: productCard("Product 1", context)),
                Expanded(child: productCard("Product 2", context)),
              ],
            ),
            Row(
              spacing: 10,
              children: [
                Expanded(child: productCard("Product 3", context)),
                Expanded(child: productCard("Product 4", context)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget productCard(String name, BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.2,
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Icon(
                  Icons.shopping_bag,
                  size : 50,
                ),
              ),
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}
