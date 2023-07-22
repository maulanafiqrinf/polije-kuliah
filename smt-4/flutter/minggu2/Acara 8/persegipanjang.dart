import 'dart:io';

void main(List<String> args) {
  createpersegipanjang(4, 8);
}

createpersegipanjang(int x, int y) {
//  create reactangle 8 x 4 with loop dart;io
  for (int i = 0; i < x; i++) {
    for (int j = 0; j < y; j++) {
      stdout.write('#');
    }
    stdout.writeln('');
  }
}
