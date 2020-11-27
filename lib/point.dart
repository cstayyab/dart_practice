import 'dart:math';

enum Dimensions { TwoD, ThreeD }

class Point {
  num x;
  num y;
  num distanceFromOrigin;

  Point(x, y)
      : x = x,
        y = y,
        distanceFromOrigin = sqrt(x * x + y * y);
  Point.fromJSON(Map<String, double> json) : this(json['x'], json['y']);

  double distanceTo(Point otherPoint) {
    var dx = x - otherPoint.x;
    var dy = y - otherPoint.y;
    return sqrt(dx * dx + dy * dy);
  }

  Point operator +(Point p) => Point(x + p.x, y + p.y);
  Point operator -(Point p) => Point(x - p.x, y - p.y);

  Dimensions get dimension => Dimensions.TwoD;
}
