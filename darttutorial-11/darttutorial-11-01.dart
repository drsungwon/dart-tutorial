// darttutorial-11-01.dart

void main() {
  var sum = 0;
  for(var num = 1; num <= 10; num++) {
    sum = sum + num;
    print("sum is $sum and num is $num.");
  }
  print("Finally, sum is $sum.");
}