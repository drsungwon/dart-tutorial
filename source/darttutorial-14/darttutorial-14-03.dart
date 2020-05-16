// darttutorial-14-03.dart 
// Ref: https://api.dart.dev/stable/2.7.1/dart-core/double-class.html

void main() {
  var num;

  // Returns the absolute value
  num = 1.4.abs();
  print("$num");

  // Returns a string representation
  num = 1.4.toString();
  print("$num");

  // Returns the greatest integer no greater than member data
  num = 1.4.floor();
  print("$num");

  // Returns the greatest integer double value no greater than member data
  num = 1.4.floorToDouble();
  print("$num");

  // Returns the greatest integer no greater than member data
  num = 1.4.round();
  print("$num");

  // Returns the integer double value obtained by discarding any fractional digits
  num = 1.4.truncateToDouble();
  print("$num");
}