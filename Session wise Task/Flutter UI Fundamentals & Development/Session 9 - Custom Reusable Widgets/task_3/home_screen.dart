import 'package:flutter/material.dart';
import 'offerBanner.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            OfferBanner(
              imageUrl:
                  "https://images.unsplash.com/photo-1523275335684-37898b6baf30",
              offerText: "🛍️ Mega Sale! Up to 70% OFF on Electronics",
            ),
          ],
        ),
      ),
    );
  }
}
