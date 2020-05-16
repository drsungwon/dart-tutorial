// darttutorial-08-01.dart

void main() {
  dynamic var1 = 1;
  print("$var1"); // Print 1

  var1 = ++var1 + 10;
  print("$var1"); // Print 12

  var1 = var1++ + 10;
  print("$var1"); // Print 22
}