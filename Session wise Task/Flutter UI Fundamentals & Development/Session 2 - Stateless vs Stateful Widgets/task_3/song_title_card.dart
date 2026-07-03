import 'package:flutter/material.dart';

class SongTitleCard extends StatefulWidget {
  const SongTitleCard({super.key});

  @override
  State<SongTitleCard> createState() => _SongTitleCardState();
}

class _SongTitleCardState extends State<SongTitleCard> {
  bool isLiked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.music_note,
              size: 40,
              color: Colors.deepPurple,
            ),
            const SizedBox(width: 12),

            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "Humnava",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Papon",
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),

            const SizedBox(width: 20),

            IconButton(
              onPressed: () {
                setState(() {
                  isLiked = !isLiked;
                });
              },
              icon: Icon(
                Icons.favorite,
                color: isLiked ? Colors.red : Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}