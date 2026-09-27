import 'dart:math';

import 'teilnehmer.dart';

void main() {
  final dartKurs = Kurs('Dart');
  final javaScriptKurs = Kurs('Javascript');
  final pythonKurs = Kurs('Python'); 

  final teilnehmer1 = Teilnehmer(
    'Joshua',
    'Moore',
    30,
    Geschlecht.maenlich,
    1,
  );
  final teilnehmer2 = Teilnehmer(
    'Lukas',
    'Nies',
    26,
    Geschlecht.maenlich,
    2,
  );
  final teilnehmer3 = Teilnehmer(
    'Leonie',
    'Müller',
    22,
    Geschlecht.weiblich,
    2,
  );
  dartKurs.teilnehmer.addAll([teilnehmer1, teilnehmer2, teilnehmer3]);
  javaScriptKurs.teilnehmer.addAll([teilnehmer2, teilnehmer3, teilnehmer1]);
  pythonKurs.teilnehmer.addAll([teilnehmer2, teilnehmer1, teilnehmer3]);

  print(javaScriptKurs);
  print(pythonKurs);
  print(dartKurs);
  
}



