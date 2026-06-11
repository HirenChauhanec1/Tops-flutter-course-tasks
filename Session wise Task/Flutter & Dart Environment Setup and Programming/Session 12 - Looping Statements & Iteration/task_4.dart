void main(){

  // 4.
  // Write a Dart program that takes a list of cricket scores (e.g., [45, 100, 78, 23, 56]) and
  // uses a loop to count how many scores are above 50,
  // then print the total number of 'half-centuries' like an IPL scoreboard.

  List<int> scoreList = [45, 100, 78, 23, 56];
  printHalfCenturyCount(scoreList);

}
void printHalfCenturyCount(List<int> scoreList){

  int halfCenturyCount = 0;

  for (var score in scoreList) {
    if(score >= 50){
      halfCenturyCount++;
    }
  }

  print("Total number of 'half-centuries' is $halfCenturyCount.");

}