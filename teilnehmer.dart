import 'dart:math';

class Zugriffsberechtigung {

late String zugriffsCode;

Zugriffsberechtigung() {
   zugriffsCode = randomGenerator();
   }

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
}
enum Geschlecht { maenlich, weiblich }

class Teilnehmer {
  String? vorName;
  String? nachName;
  int? alter;
  Geschlecht geschlecht;
  int? abschlussnote;
  Zugriffsberechtigung zugriffsberechtigung =  Zugriffsberechtigung();

  Teilnehmer(
    this.vorName,
    this.nachName,
    this.alter,
    this.geschlecht,
    this.abschlussnote,
  );
  @override
String toString() {
  return 'Vorname:  ${vorName ?? ""}\n Nachname: ${nachName ?? ""}\n '
      'Alter: ${alter ?? ""} \n Geschlecht: ${geschlecht.name},\n '
      'Abschlussnote: ${abschlussnote ?? ""},\n '
      'Zugriffscode: ${zugriffsberechtigung.zugriffsCode}.\n \n';
}
}

class Kurs {
  String? kursName;
  List<Teilnehmer> teilnehmer = [];

  Kurs(this.kursName);

  @override
String toString() {
  return 'Kurs: $kursName\nTeilnehmer: $teilnehmer';
}
}
