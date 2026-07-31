import 'package:flutter/material.dart';

class Restaurant {
  final String name;
  final String cuisine;
  final double rating;

  Restaurant({
    required this.name,
    required this.cuisine,
    required this.rating,
  });
}

class HomeScreen extends StatefulWidget {
   const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List<Restaurant> restaurants = [
    Restaurant(
      name: "Pizza Palace",
      cuisine: "Italian",
      rating: 4.8,
    ),
    Restaurant(
      name: "Spice Garden",
      cuisine: "Indian",
      rating: 4.6,
    ),
    Restaurant(
      name: "Sushi World",
      cuisine: "Japanese",
      rating: 4.7,
    ),
    Restaurant(
      name: "Burger Hub",
      cuisine: "American",
      rating: 4.5,
    ),
    Restaurant(
      name: "Dragon Bowl",
      cuisine: "Chinese",
      rating: 4.4,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Trending Restaurants",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 12),
          Expanded(
            child: ListView.builder(
              itemCount: restaurants.length,
              itemBuilder: (context, index) {
                final restaurant = restaurants[index];

                return Card(
                  margin: EdgeInsets.symmetric(vertical: 8),
                  elevation: 3,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.orange,
                      child: Icon(
                        Icons.restaurant,
                        color: Colors.white,
                      ),
                    ),
                    title: Text(
                      restaurant.name,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text("Cuisine: ${restaurant.cuisine}"),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.amber,
                          size: 20,
                        ),
                        SizedBox(width: 4),
                        Text(
                          restaurant.rating.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
