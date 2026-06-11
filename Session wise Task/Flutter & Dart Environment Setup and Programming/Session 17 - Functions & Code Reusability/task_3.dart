import 'dart:io';

void main() {
  // 3.
  // Build an arrow function in Dart named formatFollowers that takes an integer and
  // returns a formatted string like YouTube: 1500 becomes '1.5K', 1200000 becomes '1.2M',
  // and numbers below 1000 stay as-is.<br><br><em><strong>Hint:</strong>
  // Use conditional logic to check the number's size and format accordingly.</em>

  stdout.write("Enter Your followers : ");
  int  followers= int.parse(stdin.readLineSync().toString());

  print(formatFollowers(followers));
}

String formatFollowers(int followers) {
  String followersInDecimal ;
  if (followers >= 1000000000) {
    followersInDecimal = "${(followers / 1000000000).toStringAsFixed(2)}B";
  } else if (followers >= 1000000) {
    followersInDecimal = "${(followers / 1000000).toStringAsFixed(2)}M";
  }
  else if(followers >= 1000){
    followersInDecimal = "${(followers / 1000).toStringAsFixed(2)}K";
  }
  else{
    followersInDecimal = "$followers";
  }
  return "Youtube: $followers becomes '$followersInDecimal'";
}
