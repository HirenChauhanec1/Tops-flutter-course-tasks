import 'package:flutter/material.dart';

void main() {
  runApp(InstaProfileApp());
}

class InstaProfileApp extends StatelessWidget {
    const InstaProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SongInfoScreen(),
    );
  }
}
class SongInfoScreen extends StatelessWidget {
   const SongInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text("Song Info"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
             Text(
              "Humdard",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

             SizedBox(height: 10),

             Text(
              "Arijit Singh",
              style: TextStyle(
                fontSize: 20,
                fontStyle: FontStyle.italic,
                color: Colors.grey,
              ),
            ),

             SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {
                print("Play Now button pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                padding:  EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 15,
                ),
              ),
              child:  Text(
                "Play Now",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),

             SizedBox(height: 20),

             Icon(
              Icons.favorite,
              color: Colors.red,
              size: 40,
            ),

            SizedBox(height: 20),

            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                "https://i.pinimg.com/474x/d3/5d/ec/d35decd3f83fa0d132b1922a4c942be6.jpg",
                height: 200,
                width: 200,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}