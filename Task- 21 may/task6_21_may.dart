import 'dart:io';

void main(){

  var currency = "₹";

  var principalAmount = 1000;
  var annualInterestRate= 12.5;
  var timePeriod = 5;

  var interest =  (principalAmount*annualInterestRate*timePeriod)/100;

  print("Principal amount is $currency$principalAmount, ");
  print("Annual rate of interest is $annualInterestRate,");
  print("Time period is $timePeriod years");

  print("Interest amount is $currency$interest");


}