class ScoreWeaponViewModel {
  String idWeapon;
  int headshotPercent;
  int totalKills;
  int precisionPercent;
  String nameWeapon;

  ScoreWeaponViewModel({
    required this.idWeapon,
    required this.headshotPercent,
    required this.totalKills,
    required this.precisionPercent,
    required this.nameWeapon,
  });

  ScoreWeaponViewModel toMap(Map<String, dynamic> json) {
    ScoreWeaponViewModel data = ScoreWeaponViewModel(
      idWeapon: json['idWeapon'],
      headshotPercent: json['headshotPercent'],
      totalKills: json['totalKills'],
      precisionPercent: json['precisionPercent'],
      nameWeapon: json['nameWeapon'],
    );
    return data;
  }
}
