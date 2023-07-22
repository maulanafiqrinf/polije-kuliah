import 'dart:async';

void main() {
  print("saya dijalankan pertama");
  var timer = Timer(Duration(seconds: 3), () => print('saya dijalankan terakhir'));
  print("saya dijalankan kedua");
}
