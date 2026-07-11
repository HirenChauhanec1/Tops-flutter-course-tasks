import 'package:flutter/material.dart';

class ZomatoStyleCard extends StatefulWidget {
  const ZomatoStyleCard({super.key});

  @override
  State<ZomatoStyleCard> createState() => _ZomatoStyleCardState();
}

class _ZomatoStyleCardState extends State<ZomatoStyleCard> {
  @override
  Widget build(BuildContext context) {
    var widthScreen = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(title: Text("Zomato Restaurant card")),
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Center(
          child: SizedBox(
            width: widthScreen * 0.9,
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(10),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadiusGeometry.vertical(
                      top: Radius.circular(10),
                    ),
                    child: Image.network(
                      "https://images.unsplash.com/photo-1517248135467-4c7edcad34c4?w=800",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Saraza",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadiusGeometry.circular(5),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 4,
                              horizontal: 7,
                            ),
                            child: Row(
                              spacing: 5,
                              children: [
                                Text(
                                  "4.5",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 17,
                                  ),
                                ),
                                Icon(Icons.star, color: Colors.white, size: 20),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
