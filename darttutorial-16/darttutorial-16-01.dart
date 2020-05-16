// darttutorial-16-01.dart 
// Reference: https://api.dart.dev/stable/2.7.1/dart-core/Set-class.html

void main() {
  // #1 Simple List and Set
  var myList1 = ["C++", "Dart", "Go", "Python", "Dart"];
  print("#1.1 $myList1");
  var mySet1  = {"C++", "Dart", "Go", "Python", "Dart"};
  print("#1.2 $mySet1");

  // #2 Empty Set and element addition
  var mySet2 = <String>{};
  mySet2.add("C");
  mySet2.addAll(mySet1);
  print("#2 $mySet2 :: " + mySet2.length.toString());

  // #3 ...? operator usage
  var mySet3 = {...?mySet2, "R"};
  print("#3 $mySet3");

  // #4 contains() method
  if(mySet3.contains("Dart") == true) {
    print("#4 Dart language is included in mySet3");
  }

  // #5 union() method
  var mySet4 = {"JavaScript", "TypeScript"};
  var mySet5 = mySet3.union(mySet4);
  print("#5 $mySet5");

  // #6 dynamic Set for heterogeneous types
  Set<dynamic> mySet6 = {"C++", "Dart", "Go", "Python", 1, 2, 3};
  print("#6 $mySet6");
}