import 'package:flutter/material.dart';

import '../widgets/service_list_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  final List<Map<String, dynamic>> services = const [
    {
      "name": "Food Delivery",
      "icon": Icons.fastfood,
      "description": "Order food from nearby restaurants."
    },
    {
      "name": "Movie Tickets",
      "icon": Icons.movie,
      "description": "Book movie tickets online."
    },
    {
      "name": "Mobile Recharge",
      "icon": Icons.phone_android,
      "description": "Recharge your mobile instantly."
    },
    {
      "name": "Train Booking",
      "icon": Icons.train,
      "description": "Reserve train tickets easily."
    },
    {
      "name": "IPL Fantasy",
      "icon": Icons.sports_cricket,
      "description": "Play fantasy cricket leagues."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Trending Services")),
      body: ListView.builder(
        itemCount: services.length,
        itemBuilder: (context, index) {
          return ServiceListItem(service: services[index]);
        },
      ),
    );
  }
}