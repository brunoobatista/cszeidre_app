import 'package:cszeidre_app/src/modelview/score_map.viewmodel.dart';
import 'package:cszeidre_app/src/modelview/score_weapon.viewmodel.dart';

class ScoreMapsRepository {
  final List<ScoreMapViewModel> weapons = [
    ScoreMapViewModel(
        idMap: 'de_dust2',
        nameMap: 'Dust II',
        totalMatchs: 146,
        victoryPercent: 54),
    ScoreMapViewModel(
        idMap: 'de_mirage',
        nameMap: 'Mirage',
        totalMatchs: 37,
        victoryPercent: 51),
    ScoreMapViewModel(
        idMap: 'de_overpass',
        nameMap: 'Overpass',
        totalMatchs: 42,
        victoryPercent: 49),
    ScoreMapViewModel(
        idMap: 'de_vertigo',
        nameMap: 'Vertigo',
        totalMatchs: 11,
        victoryPercent: 48),
    ScoreMapViewModel(
        idMap: 'de_cache',
        nameMap: 'Cache',
        totalMatchs: 3,
        victoryPercent: 66),
  ];
}
