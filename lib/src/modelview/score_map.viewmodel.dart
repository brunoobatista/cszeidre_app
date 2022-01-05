class ScoreMapViewModel {
  String idMap;
  int totalMatchs;
  int victoryPercent;
  String nameMap;

  ScoreMapViewModel({
    required this.idMap,
    required this.totalMatchs,
    required this.victoryPercent,
    required this.nameMap,
  });

  ScoreMapViewModel toMap(Map<String, dynamic> json) {
    ScoreMapViewModel data = ScoreMapViewModel(
      idMap: json['idMap'],
      totalMatchs: json['totalMatchs'],
      victoryPercent: json['victoryPercent'],
      nameMap: json['nameMap'],
    );
    return data;
  }
}
