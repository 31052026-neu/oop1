class Teilnehmer1 {
  String? vorName;
  String? nachName;
  int? alter;
  int? abschlussnote;

  Teilnehmer1(this.vorName, this.nachName, this.alter, this.abschlussnote);
  @override
  String toString() {
    return '${vorName ?? ""} ${nachName ?? ""}, ist ${alter ?? ""} alt und hat folgende Abschlussnote: ${abschlussnote ?? ""}.';
  }
}
