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
              "Humnava",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),

             SizedBox(height: 10),

             Text(
              "Papon",
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
          ],
        ),
      ),
    );
  }
}