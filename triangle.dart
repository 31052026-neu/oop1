enum MeasurementSystem { mm, cm, dm, m, inch, feet }

class Triangle {
  double heightInMm;
  double widthInMm;
  MeasurementSystem measurementSystem;

  @override
  String toString() {
    return switch (measurementSystem) {
      // TODO: Handle this case.
      MeasurementSystem.mm =>
        'Triangle(height: ${heightInMm / 1}mm, width: ${widthInMm / 1}mm.',
      // TODO: Handle this case.
      MeasurementSystem.cm =>
        'Triangle(height: ${heightInMm / 10} cm, width: ${widthInMm / 10} cm.)',
      // TODO: Handle this case.
      MeasurementSystem.dm =>
        'Triangle(height: ${heightInMm / 100} dm, width: ${widthInMm / 100}dm.)',
      // TODO: Handle this case.
      MeasurementSystem.m =>
        'Triangle(height: ${heightInMm / 1000}m, width: ${widthInMm / 1000}m.)',
      // TODO: Handle this case.
      MeasurementSystem.inch =>
        'Triangle(height: ${heightInMm / 25.4}inches, width: ${widthInMm / 25.4}inches.)',
      // TODO: Handle this case.
      MeasurementSystem.feet =>
        'Triangle(height: ${heightInMm / 304.8}feet, width: ${widthInMm / 304.8}feet.)',
    };
  }

  Triangle.mm(this.heightInMm, this.widthInMm)
    : measurementSystem = MeasurementSystem.mm;

  Triangle.cm(double height, double width)
    : heightInMm = height * 10,
      widthInMm = width * 10,
      measurementSystem = MeasurementSystem.cm;

  Triangle.dm(double height, double width)
    : heightInMm = height * 100,
      widthInMm = width * 100,
      measurementSystem = MeasurementSystem.dm;

  Triangle.m(double height, double width)
    : heightInMm = height * 1000,
      widthInMm = width * 1000,
      measurementSystem = MeasurementSystem.m;

  Triangle.inch(double height, double width)
    : heightInMm = height * 25.4,
      widthInMm = width * 25.4,
      measurementSystem = MeasurementSystem.inch;

  Triangle.feet(double height, double width)
    : heightInMm = height * 304.8,
      widthInMm = width * 304.8,
      measurementSystem = MeasurementSystem.feet;
}
