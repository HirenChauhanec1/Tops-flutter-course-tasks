import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade300,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.shopping_bag,
                      size: 60,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Wireless Bluetooth Headphones",
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          "₹2,499",
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber, size: 18),
                            SizedBox(width: 4),
                            Text("4.5 (2,345 ratings)"),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            TabBar(
              labelColor: Colors.blue,
              unselectedLabelColor: Colors.grey,
              indicatorColor: Colors.blue,
              tabs: [
                Tab(text: "Description"),
                Tab(text: "Reviews"),
                Tab(text: "Q&A"),
              ],
            ),

            Expanded(
              child: TabBarView(
                children: [
                  DescriptionTab(),
                  ReviewsTab(),
                  QATab(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class DescriptionTab extends StatelessWidget {
  const DescriptionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        Text(
          "Description",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 12),
        Text(
          "This is placeholder content for the product description.\n\n"
              "• Premium sound quality\n"
              "• Bluetooth 5.3 connectivity\n"
              "• 30-hour battery life\n"
              "• Noise cancellation\n"
              "• Comfortable over-ear design",
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}

class ReviewsTab extends StatelessWidget {
  const ReviewsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.person)),
          title: Text("Vivek Sharma"),
          subtitle: Text(
            "⭐⭐⭐⭐⭐\nExcellent product! Placeholder review content.",
          ),
        ),
        Divider(),
        ListTile(
          leading: CircleAvatar(child: Icon(Icons.person)),
          title: Text("Anil Lila"),
          subtitle: Text(
            "⭐⭐⭐⭐\nVery good quality. Placeholder review content.",
          ),
        ),
      ],
    );
  }
}

class QATab extends StatelessWidget {
  const QATab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(16),
      children: [
        ListTile(
          title: Text("Q: Does it support fast charging?"),
          subtitle: Text("A: Yes, this is placeholder answer content."),
        ),
        Divider(),
        ListTile(
          title: Text("Q: Is there a warranty?"),
          subtitle: Text("A: Yes, it includes a 1-year warranty."),
        ),
      ],
    );
  }
}