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
      home: PlaylistCardScreen(),
    );
  }
}

class PlaylistCardScreen extends StatelessWidget {
  const PlaylistCardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text("Spotify Playlist"),
      ),
      body: Center(
        child: Container(
          width: screenWidth * 0.8,
          padding: EdgeInsets.all(screenWidth * 0.05),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF1DB954),
                Color(0xFF14833B),
              ],
            ),
            borderRadius: BorderRadius.circular(screenWidth * 0.05),
            boxShadow: [
              BoxShadow(
                color: Colors.black26,
                blurRadius: 8,
              ),
            ],
          ),
          child: SizedBox(
            height: screenHeight * 0.18,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Today's Top Hits",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),

                Spacer(),

                Text(
                  "50 Songs",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: screenHeight * 0.01),

                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Play"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}