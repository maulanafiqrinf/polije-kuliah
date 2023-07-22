main(List<String> args) {
  print("Life");
  printDelay("never flat", 500);
  print("is");
}

Future printDelay(message, ms) {
  final duration = Duration(milliseconds: ms);
  return Future.delayed(duration).then((value) => print(message));
}
