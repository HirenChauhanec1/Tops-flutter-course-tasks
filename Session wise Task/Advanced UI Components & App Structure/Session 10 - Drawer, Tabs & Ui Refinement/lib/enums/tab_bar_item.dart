import 'package:flutter/material.dart';

enum TabBarItem {
  trending(label: "Trending", icon: Icons.trending_up),
  favorites(label: "Favorites", icon: Icons.favorite),
  nearBy(label: "Nearby", icon: Icons.location_on);

  final String label;
  final IconData icon;

  const TabBarItem({required this.label, required this.icon});

}