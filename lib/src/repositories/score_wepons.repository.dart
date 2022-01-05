import 'package:cszeidre_app/src/modelview/score_weapon.viewmodel.dart';

class ScoreWeponsRepository {
  final List<ScoreWeaponViewModel> weapons = [
    ScoreWeaponViewModel(
        idWeapon: 'ak_47',
        headshotPercent: 28,
        totalKills: 1687,
        precisionPercent: 18,
        nameWeapon: 'AK47'),
    ScoreWeaponViewModel(
        idWeapon: 'm4_a1',
        headshotPercent: 27,
        totalKills: 591,
        precisionPercent: 20,
        nameWeapon: 'M4A1'),
    ScoreWeaponViewModel(
        idWeapon: 'desert_eagle',
        headshotPercent: 35,
        totalKills: 237,
        precisionPercent: 31,
        nameWeapon: 'Desert Eagle'),
    ScoreWeaponViewModel(
        idWeapon: 'glock',
        headshotPercent: 69,
        totalKills: 204,
        precisionPercent: 20,
        nameWeapon: 'Glock'),
    ScoreWeaponViewModel(
        idWeapon: 'usp_s',
        headshotPercent: 69,
        totalKills: 197,
        precisionPercent: 18,
        nameWeapon: 'USP-S')
  ];
}
