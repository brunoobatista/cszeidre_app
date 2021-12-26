class MatchViewModel {
  String mapName;
  int scoreTeam;
  int scoreEnemy;
  int kill;
  int death;
  int assist;
  double kda;
  DateTime finished_at;

  MatchViewModel({
    required this.mapName,
    required this.scoreTeam,
    required this.scoreEnemy,
    required this.kill,
    required this.death,
    required this.assist,
    required this.kda,
    required this.finished_at,
  });

  MatchViewModel fromMap(Map<String, dynamic> json) {
    MatchViewModel data = MatchViewModel(
        mapName: json['mapName'],
        scoreTeam: json['scoreTeam'],
        scoreEnemy: json['scoreEnemy'],
        kill: json['kill'],
        death: json['death'],
        assist: json['assist'],
        kda: json['kda'],
        finished_at: json['finished_at']);
    return data;
  }
}
