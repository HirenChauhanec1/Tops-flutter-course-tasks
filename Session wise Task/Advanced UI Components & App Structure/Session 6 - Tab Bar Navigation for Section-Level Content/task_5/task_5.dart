import 'package:flutter/material.dart';
import 'package:insta_clone/custom_song_card.dart';

enum TabItem {
  myPlaylist(
      tabLabel: "My Playlists",
      songList: [
        'Morning Vibes',
        'Workout Mix',
        'Road Trip Hits',
        'Chill Evenings',
        'Focus Beats',
        'Acoustic Sessions',
        'Summer Playlist',
      ],
      icon: Icons.photo_album

  ),
  likedSongs(
      tabLabel: "Liked Songs",
      songList: [
        'Blinding Lights',
        'Levitating',
        'Shape of You',
        'Stay',
        'Perfect',
        'Believer',
      ],
      icon : Icons.favorite
  ),
  recentlyPlayed(
      tabLabel: "Recently Played",
      songList: [
        'Blinding Lights',
        'Levitating',
        'Shape of You',
        'Stay',
        'Perfect',
        'Believer',
        'Someone You Loved',
      ],
      icon: Icons.play_arrow
  );

  final String tabLabel;
  final List<String> songList;
  final IconData icon;

  const TabItem({required this.tabLabel, required this.songList,required this.icon});
}

class PlaylistScreen extends StatefulWidget {
  const PlaylistScreen({super.key});

  @override
  State<PlaylistScreen> createState() => _PlaylistScreenState();
}

class _PlaylistScreenState extends State<PlaylistScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: TabItem.values.length,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Playlist Screen"),
          backgroundColor: Colors.blue,
          foregroundColor: Colors.white,
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.black,
            tabs: TabItem.values
                .map((tabLabel) => Tab(text: tabLabel.tabLabel,icon: Icon(tabLabel.icon)))
                .toList(),
          ),
        ),
        body: TabBarView(
          children: TabItem.values
              .map(
                (tabLabel) => CustomSongCard(
              items: tabLabel.songList,
              icon: Icons.music_video,
            ),
          )
              .toList(),
        ),
      ),
    );
  }
}
