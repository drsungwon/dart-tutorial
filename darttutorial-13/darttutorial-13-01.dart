// darttutorial-13-01.dart 

int sampleFunction(var varA, [var varB = 1]) {
  var localSum;
  localSum = varA + varB;  
  print("[sampleFunction] $localSum");
  return localSum;
}

void main() {
  var num1 = 1;
  var num2 = 5;
  var num3;
  
  print("[main] start with num3:$num3.");

  num3 = sampleFunction(num1, num2);

  for(var temp = 1; temp < 3; temp++) {
    num3 = num3 + sampleFunction(num1 + temp, num2 + temp);
  }

  print("[main] end with num3:$num3.");
}