// darttutorial-14-02.dart 
// Ref: https://api.dart.dev/stable/2.7.1/dart-core/double-class.html

void main() {
  double num1 = 1.4;
  double num2;
  int num3;
  String myString;

  // Returns the absolute value
  num2 = num1.abs();
  print("$num2");

  // Returns a string representation
  myString = num2.toString();
  print("$myString");

  // Returns the greatest integer no greater than member data
  num3 = num1.floor();
  print("$num3");

  // Returns the greatest integer double value no greater than member data
  num2 = num1.floorToDouble();
  print("$num2");

  // Returns the greatest integer no greater than member data
  num3 = num1.round();
  print("$num3");

  // Returns the integer double value obtained by discarding any fractional digits
  num2 = num1.truncateToDouble();
  print("$num2");
}