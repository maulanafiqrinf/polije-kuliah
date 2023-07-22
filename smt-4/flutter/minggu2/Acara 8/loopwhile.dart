import 'dart:io';

void main() {
  stdout.write('Masukan judul: ');
  String? judul = stdin.readLineSync();
  if (judul == 'LOOPING PERTAMA') {
    for (int i = 0; i < 10; i++) {
      print(i);
    }
  } else if (judul == 'LOOPING KEDUA') {
    for (int i = 20; i > 0; i--) {
      print(i);
    }
  } else if (judul == 'LOOPING KETIGA') {
    int i = 0;
    while (i < 10) {
      print(i);
      i++;
    }
  } else if (judul == 'LOOPING KEEMPAT') {
    int i = 20;
    do {
      print(i);
      i--;
    } while (i > 0);
  } else {
    print('Judul tidak diketahui');
  }
}
