import 'dart:io';

void main() {
  // 5.
  // Use ChatGPT to generate a Dart code snippet that asks the user for their favorite food from a list
  // ('Pizza', 'Burger', 'Dosa', 'Biryani'), then uses a switch-case to print a unique message for each food.
  // Paste the generated code into your Dart file and
  // test it.<br><br><em><strong>Hint:</strong> Prompt ChatGPT with:
  // 'Write a Dart function that takes a food name as input and
  // prints a special message for each using switch-case.'</em>

  print("Choose your favorite food:");
  print("Pizza, Burger, Dosa, Biryani");

  stdout.write("Enter food name: ");
  String food = stdin.readLineSync().toString();

  printFoodMessage(food);
}

void printFoodMessage(String food) {
  switch (food.toLowerCase()) {
    case 'pizza':
      print("Pizza is cheesy and delicious!");
      break;
    case 'burger':
      print("Burger is a perfect quick meal!");
      break;
    case 'dosa':
      print("Dosa is crispy and loved by many!");
      break;
    case 'biryani':
      print("Biryani is full of amazing flavors!");
      break;
    default:
      print("Sorry, that food is not in the list.");
  }
}
