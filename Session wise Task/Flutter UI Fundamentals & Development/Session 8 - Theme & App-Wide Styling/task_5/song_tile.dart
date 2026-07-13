import 'package:flutter/material.dart';

class SongTile extends StatelessWidget {
  final String songName;
  final VoidCallback onPressed;

  const SongTile({
    super.key,
    required this.songName,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        songName,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      trailing: ElevatedButton(
        onPressed: onPressed,
        child:  Text("Add to Playlist"),
      ),
    );
  }
}