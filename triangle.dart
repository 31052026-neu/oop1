enum MeasurementSystem {
  mm(factor: 1, measurement: 'mm'),
  cm(factor: 10, measurement: 'cm'),
  dm(factor: 100, measurement: 'dm'),
  m(factor: 1000, measurement: 'm'),
  inch(factor: 25.4, measurement: 'inch'),
  feet(factor: 304.8, measurement: 'feet');

  const MeasurementSystem({required this.factor, required this.measurement});

  final double factor;
  final String measurement;
}

class Triangle {
  double _heightInMm;
  double _widthInMm;
  MeasurementSystem measurementSystem;

  double getHeight(MeasurementSystem ms) {
    return _heightInMm / ms.factor;
  }

  void setHeight(MeasurementSystem ms, int areaValue) {
    if (areaValue > 0) {
      _heightInMm = areaValue * ms.factor;
    }
  }

  double getWidth(MeasurementSystem ms) {
    return _widthInMm / ms.factor;
  }

  void setWidth(MeasurementSystem ms, int areaValue) {
    if (areaValue > 0) {
      _widthInMm = areaValue * ms.factor;
    }
  }

  String get area {
    double height = getHeight(measurementSystem);
    double width = getWidth(measurementSystem);
    double areaValue = height * width / 2;

    return '$areaValue ${measurementSystem.measurement}²';
  }

  @override
  String toString() {
    return 'Triangle(height: ${getHeight(measurementSystem)} ${measurementSystem.measurement}, '
        'width: ${getWidth(measurementSystem)} ${measurementSystem.measurement})';
  }

  Triangle.mm(this._heightInMm, this._widthInMm)
    : measurementSystem = MeasurementSystem.mm;

  Triangle.cm(double height, double width)
    : _heightInMm = height * MeasurementSystem.cm.factor,
      _widthInMm = width * MeasurementSystem.cm.factor,
      measurementSystem = MeasurementSystem.cm;

  Triangle.dm(double height, double width)
    : _heightInMm = height * MeasurementSystem.dm.factor,
      _widthInMm = width * MeasurementSystem.dm.factor,
      measurementSystem = MeasurementSystem.dm;

  Triangle.m(double height, double width)
    : _heightInMm = height * MeasurementSystem.m.factor,
      _widthInMm = width * MeasurementSystem.m.factor,
      measurementSystem = MeasurementSystem.m;

  Triangle.inch(double height, double width)
    : _heightInMm = height * MeasurementSystem.inch.factor,
      _widthInMm = width * MeasurementSystem.inch.factor,
      measurementSystem = MeasurementSystem.inch;

  Triangle.feet(double height, double width)
    : _heightInMm = height * MeasurementSystem.feet.factor,
      _widthInMm = width * MeasurementSystem.feet.factor,
      measurementSystem = MeasurementSystem.feet;
}
