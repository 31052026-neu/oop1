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
    randomGenerator(),
  );
  final teilnehmer2 = Teilnehmer(
    'Lukas',
    'Nies',
    26,
    Geschlecht.maenlich,
    2,
    randomGenerator(),
  );
  final teilnehmer3 = Teilnehmer(
    'Leonie',
    'Müller',
    22,
    Geschlecht.weiblich,
    2,
    randomGenerator(),
  );
  dartKurs.teilnehmer.addAll([teilnehmer1, teilnehmer2, teilnehmer3]);
  javaScriptKurs.teilnehmer.addAll([teilnehmer2, teilnehmer3, teilnehmer1]);
  pythonKurs.teilnehmer.addAll([teilnehmer2, teilnehmer1, teilnehmer3]);

  print(javaScriptKurs.teilnehmer);
  print('Zugriffsberechtigung Joshua Moore: ${randomGenerator()}');
  print('Zugriffsberechtigung Lukas Nies: ${randomGenerator()}');
  print('Zugriffsberechtigung Leonie Müller: ${randomGenerator()}');
}

// zurück geben eine zeichenkette sprich: String (besteht aus Ziefern und  Buchstaben)
// zeihenkette soll 9 zeichen lang sein
// zeichen in zeichenkette soll einzigartig sein

String randomGenerator() {
  List<String> zeichen = [
    'a',
    'b',
    'c',
    'd',
    'e',
    'f',
    'g',
    'h',
    'i',
    'j',
    'k',
    'l',
    'm',
    'n',
    'o',
    'p',
    'q',
    'r',
    's',
    't',
    'u',
    'v',
    'w',
    'x',
    'y',
    'z',
    '0',
    '1',
    '2',
    '3',
    '4',
    '5',
    '6',
    '7',
    '8',
    '9',
  ];
  String result = '';
  for (int i = 0; i < 9; i++) {
    int rundomIndex = Random().nextInt(zeichen.length);
    result = result + "${zeichen[rundomIndex]}";
  }

  return result;
}
