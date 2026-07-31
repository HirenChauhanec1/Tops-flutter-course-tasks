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

class DashboardScreen extends StatelessWidget {
  DashboardScreen({super.key});

  final List<Restaurant> restaurants = [
    Restaurant(name: "Pizza Palace", cuisine: "Italian", rating: 4.8),
    Restaurant(name: "Spice Garden", cuisine: "Indian", rating: 4.6),
    Restaurant(name: "Sushi World", cuisine: "Japanese", rating: 4.7),
    Restaurant(name: "Burger Hub", cuisine: "American", rating: 4.5),
    Restaurant(name: "Dragon Bowl", cuisine: "Chinese", rating: 4.4),
    Restaurant(name: "Taco Fiesta", cuisine: "Mexican", rating: 4.3),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Food Delivery Dashboard"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
        ),
        body: Padding(
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
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12,
                  mainAxisSpacing: 12,
                  childAspectRatio: 0.85,
                  children: restaurants.map((restaurant) {
                    return Card(
                      elevation: 4,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(12),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CircleAvatar(
                              radius: 28,
                              backgroundColor: Colors.orange,
                              child: Icon(
                                Icons.restaurant,
                                color: Colors.white,
                                size: 30,
                              ),
                            ),
                            SizedBox(height: 12),

                            Text(
                              restaurant.name,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 8),

                            Text(
                              restaurant.cuisine,
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 14,
                              ),
                            ),

                            SizedBox(height: 10),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber,
                                  size: 18,
                                ),
                                SizedBox(width: 4),
                                Text(
                                  restaurant.rating.toString(),
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
    );
  }
}