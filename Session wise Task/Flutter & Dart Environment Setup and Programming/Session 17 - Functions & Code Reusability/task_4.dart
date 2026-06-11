import 'dart:io';

void main(){

  // 4.
  // Write a reusable Dart function validatePhoneNumber that checks
  // if a given string is a valid Indian mobile number (starts with 6-9 and has exactly 10 digits).

  stdout.write("Enter your mobile number : ");
  String mobileNumber  = stdin.readLineSync().toString();

  print(validatePhoneNumber(mobileNumber));

}

bool validatePhoneNumber(String mobileNumber){

  if(mobileNumber.contains(" ")){
    return false;
  }

  List<String> mobileNumberDigitList = mobileNumber.split("");

  if(mobileNumber.length != 10){
    return false;
  }

  for(int i = 0; i <= 5; i++){
    if(mobileNumberDigitList[0]  == i.toString()){
      return false;
    }
  }
  return true;
}