
import 'package:flutter/material.dart';

import '../screens/details_screen.dart';

class ServiceListItem extends StatelessWidget {
  final Map<String, dynamic> service;

  const ServiceListItem({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(service["icon"]),
      title: Text(service["name"]),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (_) => DetailsScreen(
              title: service["name"],
              description: service["description"],
            ),
          ),
        );
      },
    );
  }
}