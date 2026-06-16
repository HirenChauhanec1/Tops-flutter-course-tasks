void main() async {
  // 1.
  // Create a Dart function fetchTrendingSongs() that returns a Future<String>
  // after a 2-second delay, simulating an API call to get trending songs for a music app like Spotify.
  // Print 'Top songs loaded!' after the Future completes.

  print("fetching trending songs...");

  await fetchTrendingSongs().then((value) => print(value));

  print("fetching of trending songs is ended.");
}

Future<String> fetchTrendingSongs() async =>
    await Future.delayed(Duration(seconds: 2)).then((value) => "Top songs loaded!");

