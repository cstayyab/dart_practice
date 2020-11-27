import 'dart:math' show pi, sqrt;

class Circle {
  num radius;

  Circle(this.radius);

  double get area => pi * radius * radius;
  set area(double value) => radius = sqrt(value / pi);
}
