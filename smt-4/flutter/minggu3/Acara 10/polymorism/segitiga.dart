import 'bangun_datar.dart';

class Segitiga extends BangunDatar {
  double alas = 0;
  double tinggi = 0;
  double diagonal = 0;

  @override
  double luas() {
    return 0.5 * alas * tinggi;
  }

  @override
  double keliling() {
    return alas + tinggi + diagonal;
  }
}
