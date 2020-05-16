// darttutorial-10-05.dart

void main() {
  var command = 'close';
  switch (command) {
    case 'close': 
    case 'CLOSE':
      print("CLOSE");
      break;
    case 'open': 
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("default");
  }
}