import 'package:flutter/material.dart';

class RestaurantsScreen extends StatefulWidget {
  RestaurantsScreen({super.key});

  final List<Restaurant> restaurants = [
    Restaurant(name: "Spice Garden", cuisine: "Indian", rating: 4.7),
    Restaurant(name: "Pizza Palace", cuisine: "Italian", rating: 4.5),
    Restaurant(name: "Sushi World", cuisine: "Japanese", rating: 4.8),
    Restaurant(name: "Burger House", cuisine: "American", rating: 4.3),
    Restaurant(name: "Dragon Wok", cuisine: "Chinese", rating: 4.6),
  ];

  @override
  State<RestaurantsScreen> createState() => _RestaurantsScreenState();
}

class _RestaurantsScreenState extends State<RestaurantsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant Screen", style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: widget.restaurants
              .map(
                (entry) => RestaurantCard(
                  restaurantName: entry.name,
                  cuisine: entry.cuisine,
                  rating: entry.rating,
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}

class Restaurant {
  String name, cuisine;
  num rating;

  Restaurant({required this.name, required this.cuisine, required this.rating});
}

class RestaurantCard extends StatelessWidget {
  const RestaurantCard({
    super.key,
    required this.restaurantName,
    required this.cuisine,
    required this.rating,
  });

  final String restaurantName, cuisine;
  final num rating;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: ListTile(
        leading: CircleAvatar(
          radius: 20,
          backgroundColor: Colors.indigo.withValues(alpha: 0.20),
          child: Icon(Icons.restaurant),
        ),
        title: Text(restaurantName, style: TextStyle(fontSize: 20)),
        subtitle: Text(cuisine),
        trailing: Text("⭐ $rating", style: TextStyle(fontSize: 15)),
      ),
    );
  }
}
