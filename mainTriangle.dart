import 'triangle.dart';

void main() {
  final triangleCm = Triangle.cm(22, 29);
  final triangleDm = Triangle.dm(203, 144);
  final triangleM = Triangle.m(2, 4);
  final triangleInch = Triangle.inch(5, 4);
  final triangleFeet = Triangle.feet(8, 3);
  final triangleMm = Triangle.mm(2000, 3000);

  print(
    ' Milimeter: $triangleMm\n Centimeter: $triangleCm\n Dezimeter: $triangleDm\n Meter: $triangleM\n Inches: $triangleInch\n Feet: $triangleFeet\n',
  );

  print(
    'Höhe: ${triangleM.getHeight(MeasurementSystem.m)} m * '
    'Breite: ${triangleM.getWidth(MeasurementSystem.m)} m = Dreiecks Fläche: ${triangleM.area} ',
  );
}
