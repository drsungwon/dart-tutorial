// darttutorial-10-04.dart

void main() {
  var command = 'OPEN';
  switch (command) {
    case 'CLOSED':
      print("CLOSED");
      break;
    case 'PENDING':
      print("PENDING");
     break;
    case 'APPROVED':
      print("APPROVED");
      break;
    case 'DENIED':
      print("DENIED");
      break;
    case 'OPEN':
      print("OPEN");
      break;
    default:
      print("default");
  }
}