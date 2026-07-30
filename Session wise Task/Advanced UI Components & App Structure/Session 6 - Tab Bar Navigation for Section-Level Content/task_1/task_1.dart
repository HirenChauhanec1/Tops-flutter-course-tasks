import 'package:flutter/material.dart';

enum TabItem {
  myPlaylist(
    tabLabel: "My Playlists",
    songList: [
      'Morning Vibes',
      'Workout Mix',
      'Road Trip Hits',
      'Chill Evenings',
      'Focus Beats',
    ],
  ),
  likedSongs(
    tabLabel: "Liked Songs",
    songList: [
      'Blinding Lights',
      'Levitating',
      'Shape of You',
      'Stay',
      'Perfect',
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
                (tabLabel) => ListView.separated(
                  itemCount: tabLabel.songList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      contentPadding: EdgeInsetsGeometry.symmetric(horizontal: 10),
                      leading: Icon(Icons.music_video),
                      title: Text(tabLabel.songList[index]),
                    );
                  },
                  separatorBuilder: (context, index) => Divider(thickness: 1),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
