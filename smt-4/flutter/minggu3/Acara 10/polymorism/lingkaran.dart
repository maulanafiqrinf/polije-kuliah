import 'bangun_datar.dart';

class Lingkaran extends BangunDatar {
  double radius = 0;

  @override
  double luas() {
    return 3.14 * radius * radius;
  }

  @override
  double keliling() {
    return 2 * 3.14 * radius;
  }
}
