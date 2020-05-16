// darttutorial-07-03.dart

void main() {
  Object myInt = 1;
  Object myDouble = 1.0;
  Object myString = "Dr.Sungwon";
  Object temp;

  temp = myInt;
  myInt = myDouble;
  myDouble = myString;
  myString = temp;

  print("$myInt $myDouble $myString");
}