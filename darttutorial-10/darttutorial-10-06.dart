// darttutorial-10-06.dart

void main() {
  var command = 'close';
  switch (command) {
    case 'close': 
      // print("Use uppercase."); // Error
    case 'CLOSE':
      print("CLOSE");
      break;
    case 'open': 
      // print("Use uppercase."); // Error
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("default");
  }
}