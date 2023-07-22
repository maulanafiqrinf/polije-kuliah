import 'dart:io';

void main(List<String> args) {
  createTangga(7, 7);
}

createTangga(int x, int y) {
  for (int i = 0; i < x; i++) {
    for (int j = 0; j <= i; j++) {
      stdout.write('#');
    }
    stdout.writeln();
  }
}