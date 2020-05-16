// darttutorial-17-01.dart
// Reference: https://api.dart.dev/stable/2.7.1/dart-core/Map-class.html

void main() {
  // #1 Sample Map for programming languages
  var dictLanguageYear = {
    "C++" : 1983,
    "Dart" : 2011,
    "Go" : 2009,
    "Python" : 1991
  };

  print("#1 $dictLanguageYear");

  // #2 Sample Map for programming languages
  Map<String, String> dictLanguageAuthor = {
    "C++" : "Bjarne Stroustrup",
    "Dart" : "Lars Bak - Kasper Lund",
    "Go" : "Robert Griesemer",
    "Python" : "Guido van Rossum"
  };

  print("#2 $dictLanguageAuthor");

  // #3 Sample Map for programming languages
  var myMap = Map();
  myMap["C++"] = 1983;
  myMap["Dart"] = 2011;
  myMap["Go"] = 2009;
  myMap["Python"] = 1991;

  print("#3 $myMap");

  // #4 Manipulate an element of a Map
  var myElement = myMap["Dart"]; 
  dictLanguageAuthor["Go"] = "Robert Griesemer - Rob Pike - Ken Thompson";

  print("#4 $myElement :: ${dictLanguageAuthor["Go"]}");
}