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
      title: 'Food Categories',
      home:  FoodCategoriesScreen(),
    );
  }
}

class FoodCategoriesScreen extends StatelessWidget {
   FoodCategoriesScreen({super.key});

  final List<Map<String, String>> categories =  [
    {
      'title': 'Pizza',
      'image':
      'https://images.unsplash.com/photo-1513104890138-7c749659a591?w=300',
    },
    {
      'title': 'Biryani',
      'image':
      'https://images.unsplash.com/photo-1631515243349-e0cb75fb8d3a?w=300',
    },
    {
      'title': 'Burger',
      'image':
      'https://images.unsplash.com/photo-1568901346375-23c9450c58cd?w=300',
    },
    {
      'title': 'Desserts',
      'image':
      'https://images.unsplash.com/photo-1551024601-bec78aea704b?w=300',
    },
    {
      'title': 'Chinese',
      'image':
      'https://images.unsplash.com/photo-1512058564366-18510be2db19?w=300',
    },
    {
      'title': 'South Indian',
      'image':
      'https://images.unsplash.com/photo-1589302168068-964664d93dc0?w=300',
    },
  ];

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final int crossAxisCount = screenWidth >= 600 ? 3 : 2;

    return Scaffold(
      appBar: AppBar(
        title:  Text('Food Categories'),
      ),
      body: GridView.builder(
        padding:  EdgeInsets.all(12),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryCard(
            title: categories[index]['title']!,
            imageUrl: categories[index]['image']!,
          );
        },
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final String imageUrl;

   const CategoryCard({
    super.key,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 60,
            backgroundImage: NetworkImage(imageUrl),
            backgroundColor: Colors.grey.shade200,
          ),
           SizedBox(height: 12),
          Text(
            title,
            textAlign: TextAlign.center,
            style:  TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}