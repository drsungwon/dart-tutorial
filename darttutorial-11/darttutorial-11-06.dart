// darttutorial-11-06.dart

void main() {
  var sum = 0;
  for(var num = 1; num <= 10; num++) {
    if(num % 2 == 0){
      sum = sum + num;
    } else {
      continue;
    } 
    print("sum is $sum and num is $num.");
  }
  print("Finally, sum is $sum.");
}