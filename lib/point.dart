import 'dart:math';

class Point {
  num x;
  num y;
  num distanceFromOrigin;

  Point(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
  Point.fromJSON(Map<String, double> json) : this(json['x'], json['y']);
}
