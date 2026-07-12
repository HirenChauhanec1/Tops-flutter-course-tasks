import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  const PlaylistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Playlists'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            PlaylistCard(
              imageUrl:
              'https://images.unsplash.com/photo-1493225457124-a3eb161ffa5f?w=400',
              playlistName: 'Daily Mix',
              songCount: 32,
            ),
            PlaylistCard(
              imageUrl:
              'https://images.unsplash.com/photo-1511379938547-c1f69419868d?w=400',
              playlistName: 'Workout Hits',
              songCount: 45,
            ),
            PlaylistCard(
              imageUrl:
              'https://images.unsplash.com/photo-1496293455970-f8581aae0e3b?w=400',
              playlistName: 'Chill Vibes',
              songCount: 27,
            ),
          ],
        ),
      ),
    );
  }
}
class PlaylistCard extends StatelessWidget {
  final String imageUrl;
  final String playlistName;
  final int songCount;

  const PlaylistCard({
    super.key,
    required this.imageUrl,
    required this.playlistName,
    required this.songCount,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade900,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(
              imageUrl,
              width: 70,
              height: 70,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                playlistName,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                '$songCount songs',
                style: TextStyle(
                  color: Colors.grey.shade400,
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}