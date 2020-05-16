// darttutorial-14-06.dart 

void printType(var para) {
  if(para is int) {
    print("[type] int");
  } else if(para is double) {
    print("[type] double");
  } else if(para is String) {
    print("[type] string");
  } else if(para is bool) {
    print("[type] double");
  } else {
    print("[type] not identified");
  }
}

void main() {
  int num1 = 1;
  var num2 = 1.1;
  dynamic num3;

  printType(num1);
  printType(num2);

  num3 = num1;
  printType(num3);

  num3 = num2;
  printType(num3);

  num3 = "number";
  printType(num3);  
}