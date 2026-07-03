import 'package:flutter/material.dart';

class ProductScreen extends StatelessWidget {
  ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Flipkart Style Card",style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: ProductCard(),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  ProductCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: SizedBox(
        width: 220,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadiusGeometry.vertical(top: Radius.circular(12)),
              child: Image.network(
                "https://images.unsplash.com/photo-1606813907291-d86efa9b94db",
                height: 140,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),

            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Wireless Headphones",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                "₹1,499",
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.green,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),

            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}