import 'package:dart_practice/dart_practice.dart' as dart_practice;
import 'package:dart_practice/point.dart';

void main(List<String> arguments) {
  print('Hello world: ${dart_practice.calculate()}!');
  var p = Point.fromJSON({'x': 3, 'y': 4});
  print('(3,4) is ${p.distanceFromOrigin} units away from origin.');
  var p1 = Point(6, 8);
  var p2 = Point(5, 10);
  print(
      'Distance between p1(${p1.x}, ${p1.y}) and p2(${p2.x}, ${p2.y}) is ${p1.distanceTo(p2)}');
  var sump1p2 = p1 + p2;
  var subp1p2 = p1 - p2;
  print(
      'Sum of p1(${p1.x}, ${p1.y}) and p2(${p2.x}, ${p2.y}) is (${sump1p2.x}, ${sump1p2.y})');
  print(
      'Difference of p1(${p1.x}, ${p1.y}) and p2(${p2.x}, ${p2.y}) is (${subp1p2.x}, ${subp1p2.y})');
}
