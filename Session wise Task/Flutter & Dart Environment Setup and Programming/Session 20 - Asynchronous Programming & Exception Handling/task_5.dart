import 'dart:async';
import 'dart:math';

void main() async {
  // 5.
  // Use ChatGPT or GitHub Copilot to generate Dart code for an async function that
  // fetches cricket match scores after a 1.5-second delay and handles possible errors with try-catch.
  // Paste the generated code, then run and test it in your own Dart environment.

  await fetchCricketScore();
}

Future<void> fetchCricketScore() async {
  try {
    print("Fetching cricket match score...");

    await Future.delayed(Duration(milliseconds: 1500));

    if (Random().nextBool()) {
      throw Exception("Failed to fetch score");
    }

    String score = "India 185/4 (20 Overs)";

    print("Match Score: $score");
  } catch (e) {
    print("Error: $e");
  }
}
