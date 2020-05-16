// darttutorial-12-06.dart

int calcSum(int num1, int num2) {
  var localSum = num1 + num2;
  return localSum;
}

void main() {
  var resNum = calcSum(1,1);
  print("$resNum");
//print("$localSum"); // Error
}
