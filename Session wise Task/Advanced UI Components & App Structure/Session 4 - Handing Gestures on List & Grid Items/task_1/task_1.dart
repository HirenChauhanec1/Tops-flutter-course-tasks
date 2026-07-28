import 'package:flutter/material.dart';

class FoodListScreen extends StatelessWidget {
  FoodListScreen({super.key});

  final List<String> foodItems = [
    'Pizza',
    'Burger',
    'Dosa',
    'Pasta',
    'Sandwich',
    'Biryani',
    'Noodles',
    'Idli',
    'Pav Bhaji',
    'Ice Cream',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food List'),
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('You selected: ${foodItems[index]}'),
                  duration: Duration(seconds: 2),
                ),
              );
            },
            child: Card(
              margin: EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: ListTile(
                leading: Icon(Icons.fastfood),
                title: Text(foodItems[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}