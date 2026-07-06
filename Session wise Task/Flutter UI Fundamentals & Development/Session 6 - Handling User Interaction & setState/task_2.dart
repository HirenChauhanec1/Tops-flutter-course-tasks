import 'package:flutter/material.dart';

void main() {
  runApp (MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PlaylistVotingScreen(),
    );
  }
}

class PlaylistVotingScreen extends StatefulWidget {
  const PlaylistVotingScreen({super.key});

  @override
  State<PlaylistVotingScreen> createState() => _PlaylistVotingScreenState();
}

class _PlaylistVotingScreenState extends State<PlaylistVotingScreen> {

  int voteCount = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Playlist Voting"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Humnava",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20),

            Text(
              "Votes: $voteCount",
              style: TextStyle(
                fontSize: 22,
                color: Colors.blue,
              ),
            ),

            SizedBox(height: 30),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      voteCount++;
                    });
                  },
                  child: Text("Upvote"),
                ),

                SizedBox(width: 20),

                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      voteCount--;
                    });
                  },
                  child: Text("Downvote"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}