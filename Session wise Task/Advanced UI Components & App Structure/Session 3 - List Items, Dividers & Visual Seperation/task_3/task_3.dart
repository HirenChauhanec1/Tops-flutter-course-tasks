import 'package:flutter/material.dart';

class ProductListScreen extends StatelessWidget {
  ProductListScreen({super.key});

  final List<Product> products = [
    Product(category: "Mobiles", name: "iPhone 15", price: 79999),
    Product(category: "Mobiles", name: "Samsung Galaxy S24", price: 74999),
    Product(category: "Mobiles", name: "OnePlus 12", price: 64999),

    Product(category: "Laptops", name: "MacBook Air M3", price: 114999),
    Product(category: "Laptops", name: "HP Pavilion", price: 69999),
    Product(category: "Laptops", name: "Dell XPS 13", price: 99999),

    Product(category: "Headphones", name: "AirPods Pro", price: 24999),
    Product(category: "Headphones", name: "Sony WH-1000XM5", price: 29999),
    Product(category: "Headphones", name: "Boat Rockerz 550", price: 1999),
  ];

  @override
  Widget build(BuildContext context) {
    final List<String> productTypeList = products
        .map((product) => product.category)
        .toSet()
        .toList();

    return Scaffold(
      appBar: AppBar(title: Text("Flipkart Product List")),
      body: ListView.separated(
        itemCount: productTypeList.length,
        itemBuilder: (context, index) {
          List<Product> categoryProductList = products
              .where((product) => product.category == productTypeList[index])
              .toList();

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
              children: [
                Text(productTypeList[index],style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                ...categoryProductList.indexed.map((product) => Column(
                  children: [
                    Card(
                      margin: EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                      child: ListTile(
                        leading: Icon(Icons.shopping_bag),
                        title: Text(
                          product.$2.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        subtitle: Text(product.$2.price.toString())
                      ),
                    ),
                    SizedBox(height: 20),
                    if(product.$1 < categoryProductList.length - 1)
                      Divider(thickness: 1,height: 1,color: Colors.grey)
                  ],
                ))
              ]
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(thickness: 3,height: 1,color: Colors.blue);
        },
      ),
    );
  }
}

class Product {
  String category, name;
  int price;

  Product({required this.category, required this.name, required this.price});
}
