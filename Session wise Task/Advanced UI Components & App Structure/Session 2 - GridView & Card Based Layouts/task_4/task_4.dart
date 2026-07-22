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

  final List<Map<String, String>> categories = const [
    {
      'title': 'Pizza',
      'image':
      'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=300'
    },
    {
      'title': 'Biryani',
      'image':
      'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?w=300'
    },
    {
      'title': 'Burger',
      'image':
      'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300'
    },
    {
      'title': 'Desserts',
      'image':
      'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=300'
    },
    {
      'title': 'Chinese',
      'image':
      'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=300'
    },
    {
      'title': 'South Indian',
      'image':
      'https://images.unsplash.com/photo-1589302168068-964664d93dc0?w=300'
    },
  ];


  @override
  Widget build(BuildContext context) {

    var width = MediaQuery.of(context).size.width;
    int crossAxisCount = width >= 600 ? 3 : 2;

    return Scaffold(
      appBar: AppBar(
        title: Text('Food Category Screen'),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
      ),
      body: GridView.count(
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        padding: EdgeInsetsGeometry.all(12),
        crossAxisCount: crossAxisCount,
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
                      CircleAvatar(radius: 60,backgroundImage: NetworkImage(map['image']!)),
                      Text(map['title']!),
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
