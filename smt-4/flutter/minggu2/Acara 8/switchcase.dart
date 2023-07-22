import 'dart:io';

main(){
  print("Kamu adalah seorang penyair yang setiap hari memberikan quotes yang sangat berguna untuk orang- orang sekitar mu buatlah sebuah swith case yang dapat menampung quotes tiap harinya ");
  stdout.write("Input hari: ");
  String hari = stdin.readLineSync()!.trim().toLowerCase();

  String quote;

  switch(hari){
    case "senin": {
      quote = "Segala sesuatu memiliki kesudahan, yang sudah berakhir biarlah berlalu dan yakinlah semua akan baik-baik saja.";
      break;
    }
    case "selasa": {
      quote = "Setiap detik sangatlah berharga karena waktu mengetahui banyak hal, termasuk rahasia hati.";
      break;
    }
    case "rabu": {
      quote = "Jika kamu tak menemukan buku yang kamu cari di rak, maka tulislah sendiri.";
      break;
    }
    case "kamis": {
      quote = "Jika hatimu banyak merasakan sakit, maka belajarlah dari rasa sakit itu untuk tidak memberikan rasa sakit pada orang lain.";
      break;
    }
    case "jumat": {
      quote = "Hidup tak selamanya tentang pacar.";
      break;
    }
    case "sabtu": {
      quote = "Rumah bukan hanya sebuah tempat, tetapi itu adalah perasaan.";
      break;
    }
    case "minggu": {
      quote = "Hanya seseorang yang takut yang bisa bertindak berani. Tanpa rasa takut itu tidak ada apapun yang bisa disebut berani.";
      break;
    }
    default: {
      quote = "Hari yang anda masukan salah!";
    }
  }

  print(quote);
}