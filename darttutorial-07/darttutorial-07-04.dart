// darttutorial-07-04.dart

void main() {
  dynamic myInt = 1;
  dynamic myDouble = 1.0;
  dynamic myString = "Dr.Sungwon";
  dynamic temp;

  print(temp);

  temp = myInt;
  myInt = myDouble;
  myDouble = myString;
  myString = temp;

  print("$myInt $myDouble $myString");
}