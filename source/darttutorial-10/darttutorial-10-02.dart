// darttutorial-10-02.dart

void main() {
  var cond1 = true;
  var cond2 = false;
  var num1 = 1;
  var num2 = 9;

  var res1  = (cond1 == cond2);
  var res2  = (cond1 != cond2);
  var res3  = (num1 > num2);
  var res4  = (num1 < num2);
  var res5  = (num1 >= num2);
  var res6  = (num1 <= num2);
  var res7  = (!cond1);
  var res8  = (!cond2);
  var res9  = (cond1 && cond2);
  var res10 = (cond1 || cond2);

  // print false true
  print("$res1 $res2");

  // print false true false true
  print("$res3 $res4 $res5 $res6");

  // print false true false true
  print("$res7 $res8 $res9 $res10");
}