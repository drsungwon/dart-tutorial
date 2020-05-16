// darttutorial-11-05.dart

void main() {
  var sum = 0;
  var num = 1; 
  do {
    sum = sum + num;
    print("sum is $sum and num is $num.");
    num++;
  } while(num <= 10);
  print("Finally, sum is $sum.");
}