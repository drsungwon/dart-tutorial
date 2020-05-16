// darttutorial-14-04.dart 
// Ref: https://api.dart.dev/stable/2.7.1/dart-core/String-class.html

void main() {
  var string1 = "Hello Dart!";
  var string2;
  var num;

  // Sub-slicing (or Sub-string)
  string2 = string1.substring(0,5);
  print("$string2");

  // Index Operator
  string2 = string1[0];
  print("$string2");

  // Concatenation
  string2 = "Hello" + " " + "Dart" + "!";
  print("$string2");

  // Using String Properties
  num = string1.length;
  print("$num");

  // Interpolate the value of expressions within strings
  string2 = "$string1 has ${string1.length} letters";
  print("$string2");

  // Converts all characters to lower case
  string2 = string1.toLowerCase();
  print("$string2");

  // Converts all characters to upper case
  string2 = string1.toUpperCase();
  print("$string2");
}