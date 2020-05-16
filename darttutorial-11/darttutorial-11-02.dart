// darttutorial-11-02.dart

void main() {
  var temp = 0;

  for(var num1 = 1; num1 <= 9; num1++) {
    for(var num2 = 1; num2 <= 9; num2++) {
      temp = num1 * num2;
      print("$num1 * $num2 = $temp");
    }
  }
}