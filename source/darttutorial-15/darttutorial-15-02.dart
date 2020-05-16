// darttutorial-15-02.dart
// Reference: https://api.dart.dev/stable/2.7.1/dart-core/List-class.html 

// Print the type of object
String getObjectType(var para) {
  if(para is List<int>) {
    return ("_List<int>_");
  } else if(para is List<dynamic>) {
    return ("_List<dynamic>_");
  } else {
    return ("_Unknown_");
  }
}

void main() {
  // #1 List sample
  List<int> myList1 = [1, 2, 3];
  print("#1 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");

  // #2 List properties
  myList1 = [1, 2, 3];
  print("#2 " + "${myList1.first} :: ${myList1[1]} :: ${myList1.last} :: ${myList1.length}");

  // #3 List manipulation using property
  myList1.length = 0;
  print("#3 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");

  // #4 add() method
  myList1.add(4);
  print("#4 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");  

  // #5 addAll() method
  myList1.addAll([5, 6, 7]);
  print("#5 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");  

  // #6 clear() method
  myList1.clear();
  print("#6 " + getObjectType(myList1) + " :: $myList1 :: ${myList1.length}");    

  // #7 indexOf() method
  var myList2 = ["C++", "Dart", "Python"];
  print("#7 " + myList2.indexOf("Dart").toString());

  // #8 insert() method
  myList2.insert(1, "Go");
  print("#8 " + getObjectType(myList2) + " :: $myList2 :: ${myList2.length}");    

  // #9 sort() method (by length)
  myList2.sort((a,b) => a.length.compareTo(b.length));
  print("#9 " + getObjectType(myList2) + " :: $myList2 :: ${myList2.length}"); 

  // #10 sort() method (by alphabet sequence)
  myList2.sort((a,b) => a.compareTo(b));
  print("#10 " + getObjectType(myList2) + " :: $myList2 :: ${myList2.length}"); 
}