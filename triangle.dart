enum MeasurementSystem {
  mm(value: 19, test: 20),
  cm(value: 20, test: 30);

  const MeasurementSystem({required this.value, required this.test});

  final double value;
  final double test;
}

class Triangle {
  double _heightInMm;
  double _widthInMm;
  MeasurementSystem measurementSystem;

  set heightInMm(double height) {
    if (_heightInMm > 0) {
      _heightInMm = height * 1;
    }
  }

  set widthInMm(double width) {
    if (_widthInMm > 0) {
      _widthInMm = width * 1;
    }
  }

  set heightInCm(double height) {
    if (height > 0) {
      _heightInMm = height * 10;
    }
  }

  set widthInCm(double width) {
    if (width > 0) {
      _widthInMm = width * 10;
    }
  }

  set heightInDm(double height) {
    if (height > 0) {
      _heightInMm = height * 100;
    }
  }

  set widthInDm(double width) {
    if (width > 0) {
      _widthInMm = width * 100;
    }
  }

  set heightInM(double height) {
    if (height > 0) {
      _heightInMm = height * 1000;
    }
  }

  set widthInM(double width) {
    if (width > 0) {
      _widthInMm = width * 1000;
    }
  }

  set heightInInch(double height) {
    if (height > 0) {
      _heightInMm = height * 25.4;
    }
  }

  set widthInInch(double width) {
    if (width > 0) {
      _widthInMm = width * 25.4;
    }
  }

  set heightInFeet(double height) {
    if (height > 0) {
      _heightInMm = height * 304.8;
    }
  }

  set widthInFeet(double width) {
    if (width > 0) {
      _widthInMm = width * 304.8;
    }
  }

  @override
  String toString() {
    return switch (measurementSystem) {
      MeasurementSystem.mm =>
        'Triangle(height: ${_heightInMm / 1}mm, width: ${_widthInMm / 1}mm.',
      MeasurementSystem.cm =>
        'Triangle(height: ${_heightInMm / 10} cm, width: ${_widthInMm / 10} cm.)',
      MeasurementSystem.dm =>
        'Triangle(height: ${_heightInMm / 100} dm, width: ${_widthInMm / 100}dm.)',
      MeasurementSystem.m =>
        'Triangle(height: ${_heightInMm / 1000}m, width: ${_widthInMm / 1000}m.)',
      MeasurementSystem.inch =>
        'Triangle(height: ${_heightInMm / 25.4}inches, width: ${_widthInMm / 25.4}inches.)',
      MeasurementSystem.feet =>
        'Triangle(height: ${_heightInMm / 304.8}feet, width: ${_widthInMm / 304.8}feet.)',
    };
  }

  Triangle.mm(this._heightInMm, this._widthInMm)
    : measurementSystem = MeasurementSystem.mm;

  Triangle.cm(double height, double width)
    : _heightInMm = height * 10,
      _widthInMm = width * 10,
      measurementSystem = MeasurementSystem.cm;

  Triangle.dm(double height, double width)
    : _heightInMm = height * 100,
      _widthInMm = width * 100,
      measurementSystem = MeasurementSystem.dm;

  Triangle.m(double height, double width)
    : _heightInMm = height * 1000,
      _widthInMm = width * 1000,
      measurementSystem = MeasurementSystem.m;

  Triangle.inch(double height, double width)
    : _heightInMm = height * 25.4,
      _widthInMm = width * 25.4,
      measurementSystem = MeasurementSystem.inch;

  Triangle.feet(double height, double width)
    : _heightInMm = height * 304.8,
      _widthInMm = width * 304.8,
      measurementSystem = MeasurementSystem.feet;
}
