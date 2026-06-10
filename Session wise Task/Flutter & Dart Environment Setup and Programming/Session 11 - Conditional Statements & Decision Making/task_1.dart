void main(){

  // 1.
  // Write a Dart function checkDiscountEligibility that takes a user's age as input and
  // prints 'Eligible for student discount' if the age is less than 22,
  // otherwise prints 'No discount available'.


  checkDiscountEligibility(19);

}

void checkDiscountEligibility(int age) {
  if(age < 22) {
    print("Eligible for student discount");
  } else {
    print("No discount available");
  }
}