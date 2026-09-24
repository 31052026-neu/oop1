import 'dart:math';

class Zugriffsberechtigung {}

enum Geschlecht { maenlich, weiblich }

class Teilnehmer {
  String? vorName;
  String? nachName;
  int? alter;
  Geschlecht geschlecht;
  int? abschlussnote;
  String zugriffsberechtigung;

  Teilnehmer(
    this.vorName,
    this.nachName,
    this.alter,
    this.geschlecht,
    this.abschlussnote,
    this.zugriffsberechtigung,
  );
  @override
  String toString() {
    return 'Kurs:  ${vorName ?? ""} ${nachName ?? ""}, ist ${alter ?? ""} alt, ${geschlecht.name}, hat folgende Abschlussnote: ${abschlussnote ?? ""}. ';
  }
}

class Kurs {
  String? kursName;
  List<Teilnehmer> teilnehmer = [];

  Kurs(this.kursName);
}
