// darttutorial-12-01.dart

calcSum(var num1, var num2) {
  var sum = num1 + num2; // 3
  print("[calcSum()] $num1 + $num2 is $sum"); // 4
  return sum; // 5
}

void main() {
  print("[main()] start"); // 1
  var resNum = calcSum(5, 5); // 2, 6
  print("[main()] result is $resNum"); // 7
}
