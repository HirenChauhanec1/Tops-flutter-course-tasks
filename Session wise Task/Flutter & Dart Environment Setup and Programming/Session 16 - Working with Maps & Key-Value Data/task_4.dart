void main() {
  // 4.
  // You receive a Map from a mock API response representing a Spotify playlist:
  // {'playlistName': 'Chill Vibes', 'songs': ['Song A', 'Song B', 'Song C']}.
  // Write Dart code to add a new song 'Song D' to the 'songs' list inside the Map and print the updated playlist.

  Map<String, dynamic> spotifyPlaylist = {
    'playlistName': 'Chill Vibes',
    'songs': ['Song A', 'Song B', 'Song C'],
  };

  if(spotifyPlaylist['songs'] is List<String>){
    (spotifyPlaylist['songs'] as List<String>).add('Song D');
  }
  print(spotifyPlaylist);

}
