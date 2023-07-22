import 'dart:math';

class Lingkaran {
  double _radius = 0;

  void setRadius(double value) =>
      value < 0 ? _radius = value * -1 : _radius = value;
  double getRadius() => _radius;
  double getLuas() => pi * pow(_radius, 2);
}
