// darttutorial-09-03.dart

void main() {
  String s1 = "My name is ";
  String s2 = "Dr.Sungwon";
  String s3 = s1 + s2;

  var s4 = 'My '
      'name '
      'is '
      'Dr.Sungwon';

  dynamic s5 = '''
  My name is Dr.Sungwon.
  Dart is lovely.
  ''';

  print("$s3\n$s4\n$s5");
}