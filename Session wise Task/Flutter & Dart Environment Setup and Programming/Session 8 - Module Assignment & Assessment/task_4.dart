import 'dart:io';

void main() {
  // 4.
  // Write a Dart function formatFollowers(int count) that returns '1.5K' for 1500, '2M' for 2000000,
  // or the actual number for less than 1000, similar to how Instagram displays follower counts.
  // <br><br><em><strong>Hint:</strong> Use conditional statements and string interpolation for formatting.</em>

  stdout.write("Enter Your followers : ");
  int followers = int.parse(stdin.readLineSync().toString());

  print(formatFollowers(followers));
}

String formatFollowers(int count) {
  if (count >= 1000000) {
    if (count % 1000000 == 0) {
      return "${count ~/ 1000000}M";
    } else {
      return "${(count / 1000000).toStringAsFixed(1)}M";
    }
  } else if (count >= 1000) {
    if (count % 1000 == 0) {
      return "${count ~/ 1000}K";
    } else {
      return "${(count / 1000).toStringAsFixed(1)}K";
    }
  } else {
    return count.toString();
  }
}
