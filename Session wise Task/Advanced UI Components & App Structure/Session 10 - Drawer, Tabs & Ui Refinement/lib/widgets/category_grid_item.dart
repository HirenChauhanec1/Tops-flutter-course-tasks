import 'package:flutter/material.dart';

import '../screens/details_screen.dart';

class CategoryGridItem extends StatelessWidget {
  final Map<String, String> category;

  const CategoryGridItem({
    super.key,
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsScreen(
              title: category["name"]!,
              description: category["description"]!,
            ),
          ),
        );
      },
      child: Card(
        elevation: 3,
        child: Column(
          children: [
            Expanded(
              child: Image.network(
                category["image"]!,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
            Padding(
              padding: EdgeInsets.all(8),
              child: Text(
                category["name"]!,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}