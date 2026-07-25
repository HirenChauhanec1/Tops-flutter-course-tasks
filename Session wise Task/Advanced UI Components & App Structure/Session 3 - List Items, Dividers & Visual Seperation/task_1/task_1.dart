import 'package:flutter/material.dart';

class PlaylistScreen extends StatelessWidget {
  PlaylistScreen({super.key});

  final List<String> playlists = [
    'Kesariya',
    'Tum Hi Ho',
    'Apna Bana Le',
    'Raataan Lambiyan',
    'Chaleya',
    'Kal Ho Naa Ho',
    'Tera Ban Jaunga',
    'Agar Tum Saath Ho',
    'Ghungroo',
    'Ilahi',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Playlists'),
      ),
      body: ListView.separated(
        itemCount: playlists.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading:  Icon(Icons.queue_music),
            title: Text(playlists[index]),
            trailing:  Icon(Icons.chevron_right),
          );
        },
        separatorBuilder: (context, index) {
          return  Divider(
            height: 1,
            thickness: 0.5,
          );
        },
      ),
    );
  }
}