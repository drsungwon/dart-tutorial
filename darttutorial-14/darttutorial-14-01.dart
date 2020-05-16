// darttutorial-14-01.dart 
// Ref: https://api.dart.dev/stable/2.7.1/dart-core/int-class.html

void main() {
  int num1 = 1;
  int num2;
  String myString;

  // Returns the absolute value
  num2 = num1.abs();
  print("$num2");

  // Returns the greatest common divisor
  num1 = 3;
  num2 = num1.gcd(6);
  print("$num2");

  // Returns a string representation
  myString = num2.toString();
  print("$myString");
}