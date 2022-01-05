import 'package:cszeidre_app/src/modelview/match.viewmodel.dart';

class Partidas {
  final List<MatchViewModel> partidas = [
    MatchViewModel(
        mapName: 'de_dust2',
        scoreTeam: 16,
        scoreEnemy: 8,
        kill: 25,
        death: 12,
        assist: 4,
        kda: 2.04,
        finished_at: DateTime.parse('2021-12-25 13:27:00')),
    MatchViewModel(
        mapName: 'de_inferno',
        scoreTeam: 12,
        scoreEnemy: 16,
        kill: 13,
        death: 18,
        assist: 1,
        kda: 0.72,
        finished_at: DateTime.parse('2021-12-24 13:27:00')),
    MatchViewModel(
        mapName: 'de_overpass',
        scoreTeam: 16,
        scoreEnemy: 4,
        kill: 17,
        death: 16,
        assist: 6,
        kda: 1.06,
        finished_at: DateTime.parse('2021-12-21 13:27:00')),
    MatchViewModel(
        mapName: 'de_dust2',
        scoreTeam: 16,
        scoreEnemy: 14,
        kill: 23,
        death: 27,
        assist: 4,
        kda: 0.85,
        finished_at: DateTime.parse('2021-12-18 13:27:00'))
  ];
}
