import 'triangle.dart';

void main() {
  final triangleMm = Triangle.mm(104, 301);
  final triangleCm = Triangle.cm(22, 29);
  final triangleDm = Triangle.dm(203, 144);
  final triangleM = Triangle.m(2, 4);
  final triangleInch = Triangle.inch(5, 4);
  final triangleFeet = Triangle.feet(8, 3);

  triangleMm.heightInMm = 107;

  print(
    '$triangleMm\n $triangleCm\n $triangleDm\n $triangleM\n $triangleInch\n $triangleFeet\n',
  );
}
