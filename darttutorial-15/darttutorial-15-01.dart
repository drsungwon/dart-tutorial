// darttutorial-15-01.dart

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
  // #1 Simple list with three integers
  var myList1 = [1, 2, 3];
  print("1> myList1(" + getObjectType(myList1) + ") has ${myList1.length} items: $myList1");

  // #2 List element access using index operator
  for(var index = 0; index < myList1.length; index++) {
    myList1[index] *= index;
  }
  print("2> myList1(" + getObjectType(myList1) + ") has ${myList1.length} items: $myList1");

  // #3 Generic List for heterogeneous data type encapsulation
  List<dynamic> myList2 = [1, 2.0, "myName"];
  print("3> myList2(" + getObjectType(myList2) + ") has ${myList2.length} items: $myList2");

  // #4 Constant value assignment for List - 1
  myList1 = const [11, 12, 13, 14, 15];
  print("4> myList1(" + getObjectType(myList1) + ") has ${myList1.length} items: $myList1");

  // #5 Constant value assignment for List - 2
//myList1[0] = 1; // Error
  myList1 = const [101, 102, 103, 104, 105];
  print("5> myList1(" + getObjectType(myList1) + ") has ${myList1.length} items: $myList1");

  // #6 ... Operator in List creation - 1
  myList1 = [1, 2, 3];
  var myList3 = [...myList1, 4, 5, 6];
  print("6> myList3(" + getObjectType(myList3) + ") has ${myList3.length} items: $myList3");

  // #7 ... Operator in List creation - 2
  var myList4;
//myList1 = [...myList4, 4, 5, 6]; // Error
  myList1 = [...?myList4, 4, 5, 6];
  print("7> myList1(" + getObjectType(myList1) + ") has ${myList1.length} items: $myList1");
  
  // #8 if Statement in List creation  
  var myList5 = [...?myList1, if(myList2.length != 0) ...?myList2 ];
  print("8> myList5(" + getObjectType(myList5) + ") has ${myList5.length} items: $myList5");

  // #9 for Statement for List manipulation
  for(var item in myList5) {
    print("9>> $item");
  }

  // #10 for Statement in List creation
  var myList6 = ['#0', for(var item in myList5) "#$item"];
  print("10> myList6(" + getObjectType(myList6) + ") has ${myList6.length} items: $myList6");
}