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

  set heightInMm(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.mm.factor;
    }
  }

  double get heightInMm => _heightInMm / MeasurementSystem.mm.factor;

  set widthInMm(double width) {
    if (width > 0) {
      _heightInMm = width * MeasurementSystem.mm.factor;
    }
  }

  double get widthInMm => _widthInMm / MeasurementSystem.mm.factor;

  set heightInCm(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.cm.factor;
    }
  }

  double get heightInCm => _heightInMm / MeasurementSystem.cm.factor;

  set widthInCm(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.cm.factor;
    }
  }

  double get widthInCm => _widthInMm / MeasurementSystem.cm.factor;

  set heightInDm(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.dm.factor;
    }
  }

  double get heightInDm => _heightInMm / MeasurementSystem.dm.factor;

  set widthInDm(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.dm.factor;
    }
  }

  double get widthInDm => _widthInMm / MeasurementSystem.dm.factor;

  set heightInM(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.dm.factor;
    }
  }

  double get heightInM => _heightInMm / MeasurementSystem.m.factor;

  set widthInM(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.dm.factor;
    }
  }

  double get widthInM => _widthInMm / MeasurementSystem.m.factor;

  set heightInInch(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.inch.factor;
    }
  }

  double get heightInInch => _heightInMm / MeasurementSystem.inch.factor;

  set widthInInch(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.inch.factor;
    }
  }

  double get widthInInch => _widthInMm / MeasurementSystem.inch.factor;

  set heightInFeet(double height) {
    if (height > 0) {
      _heightInMm = height * MeasurementSystem.feet.factor;
    }
  }

  double get heightInFeet => _heightInMm / MeasurementSystem.feet.factor;

  set widthInFeet(double width) {
    if (width > 0) {
      _widthInMm = width * MeasurementSystem.feet.factor;
    }
  }

  double get widthInFeet => _widthInMm / MeasurementSystem.feet.factor;

  @override
  String toString() {
    return switch (measurementSystem) {
      MeasurementSystem.mm =>
        'Triangle(height: ${_heightInMm / MeasurementSystem.mm.factor}mm, width: ${_widthInMm / MeasurementSystem.mm.factor}mm.',
      MeasurementSystem.cm =>
        'Triangle(height: ${_heightInMm / MeasurementSystem.cm.factor} cm, width: ${_widthInMm / MeasurementSystem.cm.factor} cm.)',
      MeasurementSystem.dm =>
        'Triangle(height: ${_heightInMm / MeasurementSystem.dm.factor} dm, width: ${_widthInMm / MeasurementSystem.dm.factor}dm.)',
      MeasurementSystem.m =>
        'Triangle(height: ${_heightInMm / MeasurementSystem.m.factor}m, width: ${_widthInMm / MeasurementSystem.m.factor}m.)',
      MeasurementSystem.inch =>
        'Triangle(height: ${_heightInMm / MeasurementSystem.inch.factor}inches, width: ${_widthInMm / MeasurementSystem.inch.factor}inches.)',
      MeasurementSystem.feet =>
        'Triangle(height: ${_heightInMm / MeasurementSystem.feet.factor}feet, width: ${_widthInMm / MeasurementSystem.feet.factor}feet.)',
    };
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
