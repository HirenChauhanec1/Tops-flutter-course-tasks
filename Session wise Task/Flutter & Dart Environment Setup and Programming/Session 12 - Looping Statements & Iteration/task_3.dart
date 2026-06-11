void main() {
  // 3.
  // Given a Dart map called movieRatings with 5 movie titles as keys and
  // their ratings (out of 10) as values, use a for-in loop to
  // print each movie and its rating in the format 'Jawan: 8/10'.

  Map<String, double> movieRatings = {
    "12th Fail": 8.7,
    "3 Idiots": 8.4,
    "Taare Zameen Par": 8.4,
    "Dhurandhar": 8.3,
    "Drishyam": 8.2,
  };

  for(var movie in movieRatings.entries){
    print("${movie.key}: ${movie.value}/10");
  }
}
