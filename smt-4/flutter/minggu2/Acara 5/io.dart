import 'dart:io';
void main(List<String> args){
 print("masukan password");
 String inputText = stdin.readLineSync()!;
 print("password: ${inputText}");
}
