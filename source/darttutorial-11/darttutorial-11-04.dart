// darttutorial-11-04.dart

void main() {
  var sum = 0;
  var num = 1; 
  while(num <= 10) {
    sum = sum + num;
    print("sum is $sum and num is $num.");
    num++;
  }
  print("Finally, sum is $sum.");
}