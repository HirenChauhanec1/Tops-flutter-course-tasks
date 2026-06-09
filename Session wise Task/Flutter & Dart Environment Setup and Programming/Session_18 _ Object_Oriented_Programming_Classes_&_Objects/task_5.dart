import 'dart:io';

void main() {
  // 5.
  // Create a Dart class called Playlist representing a Spotify playlist with fields: playlistName and songCount.
  // Write a function addSong() that increases songCount by 1. Create a Playlist object, add 3 songs using addSong(),
  // and print the final songCount.

  Playlist spotifyPlaylist = Playlist(playlistName: "Spotify Playlist");

  for (int count = 1; count <= 3; count++) {
    spotifyPlaylist.addSong();
  }

  spotifyPlaylist.printSongCount();
}

class Playlist {
  String playlistName;
  int songCount ;

  Playlist({required this.playlistName, this.songCount = 0});

  void addSong() {
    songCount++;
  }

  void printSongCount() {
    print("Total songs in your ${playlistName.toLowerCase()} is $songCount.");
  }
}
