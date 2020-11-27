import 'package:dart_practice/dart_practice.dart' as dart_practice;
import 'package:dart_practice/point.dart';

void main(List<String> arguments) {
  print('Hello world: ${dart_practice.calculate()}!');
  var p = Point.fromJSON({'x': 3, 'y': 4});
  print('(3,4) is ${p.distanceFromOrigin} units away from origin.');
}
