import 'package:flutter/material.dart';

import '../widgets/category_grid_item.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  final List<Map<String, String>> categories = const [
    {
      "name": "Food",
      "image": "https://picsum.photos/200?1",
      "description": "Discover restaurants and food delivery."
    },
    {
      "name": "Travel",
      "image": "https://picsum.photos/200?2",
      "description": "Book flights, buses and trains."
    },
    {
      "name": "Shopping",
      "image": "https://picsum.photos/200?3",
      "description": "Buy products online."
    },
    {
      "name": "Entertainment",
      "image": "https://picsum.photos/200?4",
      "description": "Movies, music and events."
    },
    {
      "name": "Payments",
      "image": "https://picsum.photos/200?5",
      "description": "Pay bills and recharge."
    },
    {
      "name": "Sports",
      "image": "https://picsum.photos/200?6",
      "description": "Fantasy games and sports news."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Explore")),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: categories.length,
        itemBuilder: (context, index) {
          return CategoryGridItem(category: categories[index]);
        },
      ),
    );
  }
}