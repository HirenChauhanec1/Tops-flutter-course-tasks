import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Food Categories',
      home: const FoodCategoriesScreen(),
    );
  }
}

class FoodCategoriesScreen extends StatelessWidget {
  const FoodCategoriesScreen({super.key});

  final List<Map<String, dynamic>> categories = const [
    {'title': 'Pizza', 'icon': Icons.local_pizza},
    {'title': 'Biryani', 'icon': Icons.rice_bowl},
    {'title': 'Burger', 'icon': Icons.lunch_dining},
    {'title': 'Desserts', 'icon': Icons.icecream},
    {'title': 'Chinese', 'icon': Icons.ramen_dining},
    {'title': 'South Indian', 'icon': Icons.restaurant},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Food Category Screen'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        mainAxisSpacing: 20,
        crossAxisSpacing: 20,
        padding: EdgeInsetsGeometry.all(20),
        crossAxisCount: 2,
        children: categories
            .map(
              (map) => Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(10),
                ),
                elevation: 3,
                child: Center(
                  child: Column(
                    spacing: 10,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(map['icon'],size: 40,color: Colors.orange,),
                      Text(map['title']),
                    ],
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}
