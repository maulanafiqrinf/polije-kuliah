void main(List<String> args) async {
  print("Ready? Sing!");
  await line1();
  await line2();
  await line3();
  await line4();
}

Future<void> line1() async {
  String message = "pernahkah kau merasa..";
  final duration = Duration(seconds: 5);
  return await Future.delayed(duration, () => print(message));
}

Future<void> line2() async {
  String message = "pernahkah kau merasa...";
  final duration = Duration(seconds: 3);
  return await Future.delayed(duration, () => print(message));
}

Future<void> line3() async {
  String message = "pernahkah kau merasa....";
  final duration = Duration(seconds: 2);
  return await Future.delayed(duration, () => print(message));
}

Future<void> line4() async {
  String message = "Hatimu hampa.. pernahkah kau merasa.. hatimu kosong..";
  final duration = Duration(seconds: 1);
  return await Future.delayed(duration, () => print(message));
}
