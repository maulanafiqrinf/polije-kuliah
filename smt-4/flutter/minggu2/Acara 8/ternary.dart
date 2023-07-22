import 'dart:io';
void main(List<String> args) {
  print("Apakah anda setuju menginstall Aplikasi ini??");
  stdout.write("Jawab (y/t): ");
    String jawab = stdin.readLineSync()!;
    
  var hasil = (jawab == 'y')?"menginstall aplikasi dart":"aborted";

  print("Anda akan $hasil");


}