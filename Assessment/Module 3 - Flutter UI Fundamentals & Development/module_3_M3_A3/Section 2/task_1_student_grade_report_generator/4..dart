void main(){

  // Use a switch statement to print a result status label based on a status code variable: 'Result
  // Declared' for 1, 'Result Withheld' for 2, 'Revaluation Pending' for 3.

  int statusCode = 1;

  switch (statusCode) {
    case 1:
      print("Result Declared");
      break;

    case 2:
      print("Result Withheld");
      break;

    case 3:
      print("Revaluation Pending");
      break;

    default:
      print("Invalid Status Code");
  }


}