import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food List',
      home:  FoodListScreen(),
    );
  }
}

class FoodListScreen extends StatelessWidget {
   FoodListScreen({super.key});

  final List<String> foodItems =  [
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

  void _showBottomSheet(BuildContext context, String foodName) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return SafeArea(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListTile(
                leading:  Icon(Icons.favorite),
                title:  Text('Add to Favourites'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('$foodName added to Favourites'),
                    ),
                  );
                },
              ),
              ListTile(
                leading:  Icon(Icons.share),
                title:  Text('Share'),
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Sharing $foodName'),
                    ),
                  );
                },
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Food List'),
      ),
      body: ListView.builder(
        itemCount: foodItems.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('You selected: ${foodItems[index]}'),
                ),
              );
            },
            onLongPress: () {
              _showBottomSheet(context, foodItems[index]);
            },
            child: Card(
              margin:  EdgeInsets.symmetric(
                horizontal: 10,
                vertical: 5,
              ),
              child: ListTile(
                leading:  Icon(Icons.fastfood),
                title: Text(foodItems[index]),
              ),
            ),
          );
        },
      ),
    );
  }
}