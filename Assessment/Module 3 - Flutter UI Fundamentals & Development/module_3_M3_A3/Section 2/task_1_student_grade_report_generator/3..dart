void main(){

  // Use an if-else statement to print the performance tier: 'Distinction' if total marks exceed 75%,
  // 'Pass' if above 40%, otherwise 'Fail'.

  double percentage = 82.5;

// Check performance tier
  if (percentage > 75) {
    print("Performance Tier: Distinction");
  } else if (percentage > 40) {
    print("Performance Tier: Pass");
  } else {
    print("Performance Tier: Fail");
  }


}