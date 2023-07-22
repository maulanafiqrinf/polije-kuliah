import 'dart:io';

main(){
  
  String? nama, peran;

  stdout.write('Masukan nama kamu: ');
  nama = stdin.readLineSync()!;
  stdout.write('Masukan peran kamu: ');
  peran = stdin.readLineSync();
  if (nama == null && peran == null) {
    print('masukan nama dan peran');
  } else {
    if (nama == 'Jane' && peran == 'Penyihir') {
      print("Selamat datang di Dunia Werewolf, Jane");
      print(
          "Halo Penyihir Jane, kamu dapat melihat siapa yang menjadi werewolf!");
    } else if (nama == 'Jenita' && peran == 'Guard') {
      print("Selamat datang di Dunia Werewolf, Jenita");
      print(
          "Halo Guard Jenita, kamu dapat melihat siapa yang menjadi werewolf!");
    } else if (nama == 'Junaedi' && peran == 'Werewolf') {
      print("Selamat datang di Dunia Werewolf, Junaedi");
      print(
          "Halo Werewolf Junaedi, kamu dapat melihat siapa yang menjadi werewolf!");
    } else {
      print("Selamat datang di Dunia Werewolf, $nama");
      print(
          "Halo $peran $nama, kamu dapat melihat siapa yang menjadi werewolf!");
    }
  }
}