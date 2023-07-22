import 'bangun_datar.dart';
import 'lingkaran.dart';
import 'persegi.dart';
import 'segitiga.dart';

void main() {
  BangunDatar bangunDatar = new BangunDatar();

  Lingkaran lingkaran = new Lingkaran();
  lingkaran.radius = 10;

  Persegi persegi = new Persegi();
  persegi.sisi = 5;

  Segitiga segitiga = new Segitiga();
  segitiga.alas = 3;
  segitiga.tinggi = 10;
  segitiga.diagonal = 5;

  printLuas("bangunDatar", bangunDatar.luas());
  printKeliling("bangunDatar", bangunDatar.keliling());

  printLuas("lingkaran", lingkaran.luas());
  printKeliling("lingkaran", lingkaran.keliling());

  printLuas("persegi", persegi.luas());
  printKeliling("persegi", persegi.keliling());

  printLuas("segitiga", segitiga.luas());
  printKeliling("segitiga", segitiga.keliling());
}

printLuas(type, luas) {
  print("Luas dari $type adalah $luas");
}

printKeliling(type, keliling) {
  print("Keliling dari $type adalah $keliling");
}
