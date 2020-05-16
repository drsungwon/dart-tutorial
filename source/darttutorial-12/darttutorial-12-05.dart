// darttutorial-12-05.dart

// Case.1 Positional parameters
int calcFraction1(var denominator, var nominator) {
  return denominator ~/ nominator;
}

// Case.2 Positional and optional parameters
int calcFraction2(var denominator, [var nominator]) {
  if(nominator == null){
    nominator = 1;
  }
  return denominator ~/ nominator;
}

// Case.3 Positional, optional and default parameters
int calcFraction3(var denominator, [var nominator = 1]) {
  return denominator ~/ nominator;
}

// Case.4 Named parameters (all parameters are optional)
int calcFraction4({var denominator, var nominator}) {
  return denominator ~/ nominator;
}

// Case.5 Named parameters with initial value checking
int calcFraction5({var denominator, var nominator}) {
  if(nominator == null){
    nominator = 1;
  }
  return denominator ~/ nominator;
}

// Case.6 Named parameters with default parameters
int calcFraction6({var denominator, var nominator = 1}) {
  return denominator ~/ nominator;
}

void main() {
  var result1 = calcFraction1(1, 1);
  var result2 = calcFraction2(2);
  var result3 = calcFraction3(3);

  // print 1 2 3
  print("$result1 $result2 $result3");

  var result4 = calcFraction4(denominator: 4, nominator: 1);
  var result5 = calcFraction4(nominator: 1, denominator: 4);
  var result6 = calcFraction5(denominator: 5);
  var result7 = calcFraction6(denominator: 6);

  // print 4 4 5 6
  print("$result4 $result5 $result6 $result7");
}
