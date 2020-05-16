// darttutorial-08-01.dart

void main() {
  dynamic num1 = 9;
  dynamic num2 = 4;
  dynamic res1 = num1 + num2;
  dynamic res2 = num1 - num2;
  dynamic res3 = num1 * num2;
  dynamic res4 = num1 / num2;
  dynamic res5 = num1 ~/ num2;
  dynamic res6 = num1 % num2;

  // print 13 5 36 2.25 2 1
  print("$res1 $res2 $res3 $res4 $res5 $res6");

  num1 = 9.0;
  num2 = 4.0;
  res1 = num1 + num2;
  res2 = num1 - num2;
  res3 = num1 * num2;
  res4 = num1 / num2;
  res5 = num1 ~/ num2;
  res6 = num1 % num2;

  // print 13.0 5.0 36.0 2.25 2 1.0
  print("$res1 $res2 $res3 $res4 $res5 $res6");

  num1 = 9.0;
  num2 = 4;
  res1 = num1 + num2;
  res2 = num1 - num2;
  res3 = num1 * num2;
  res4 = num1 / num2;
  res5 = num1 ~/ num2;
  res6 = num1 % num2;

  // print 13.0 5.0 36.0 2.25 2 1.0
  print("$res1 $res2 $res3 $res4 $res5 $res6");
}