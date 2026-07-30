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
      'Late Night Drive',
      'Coffee House',
      'Weekend Chill',
      'Sunset Memories',
      'Rainy Day Tunes',
      'Dance Party',
      'Lo-Fi Study',
      'Classic Rock',
      'Jazz Essentials',
      'Pop Favorites',
      'Country Roads',
      'Indie Mix',
      'Happy Hits',
    ],
  ),
  likedSongs(
    tabLabel: "Liked Songs",
    songList:  [
      'Blinding Lights',
      'Levitating',
      'Shape of You',
      'Stay',
      'Perfect',
      'Believer',
      'Someone You Loved',
      'Bad Habits',
      'Peaches',
      'Heat Waves',
      'As It Was',
      'Flowers',
      'Anti-Hero',
      'Calm Down',
      'Shivers',
      'Watermelon Sugar',
      'Senorita',
      'Closer',
      'Counting Stars',
      'Rolling in the Deep',
    ],
  );

  final String tabLabel;
  final List<String> songList;

  const TabItem({required this.tabLabel, required this.songList});
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
                .map((tabLabel) => Tab(text: tabLabel.tabLabel))
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
