import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:cszeidre_app/src/modelview/match.viewmodel.dart';
import 'package:cszeidre_app/src/modelview/score_map.viewmodel.dart';
import 'package:cszeidre_app/src/modelview/score_weapon.viewmodel.dart';
import 'package:cszeidre_app/src/repositories/partidas.repository.dart';
import 'package:cszeidre_app/src/repositories/score_maps.repository.dart';
import 'package:cszeidre_app/src/repositories/score_wepons.repository.dart';
import 'package:cszeidre_app/views/home/widgets/best_score_maps.widget.dart';
import 'package:cszeidre_app/views/home/widgets/best_score_weapon.widget.dart';
import 'package:cszeidre_app/views/home/widgets/match.widget.dart';
import 'package:cszeidre_app/views/home/widgets/profile.widget.dart';
import 'package:cszeidre_app/views/home/widgets/stats.widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  List<MatchViewModel> partidas = Partidas().partidas;
  List<ScoreWeaponViewModel> scoreWeapons = ScoreWeponsRepository().weapons;
  List<ScoreMapViewModel> scoreMaps = ScoreMapsRepository().weapons;

  @override
  Widget build(BuildContext context) {
    int limit = 3;
    int addictional = partidas.length > limit ? 1 : 0;
    return Scaffold(
      body: SafeArea(
        child: ListView(
          children: [
            const ProfileWidget(),
            const StatsWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Últimas partidas',
                    style: TextStyle(
                        color: AppColors.colorTextPrincipal, fontSize: 12),
                  ),
                  // MatchWidget(
                  //   partida: partidas[0],
                  // ),
                  SizedBox(
                    height: 65,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: partidas.length + addictional,
                      itemBuilder: (context, index) {
                        if (partidas.length == 0) {
                          return const MatchWidget(message: 'Não há partidas');
                        }
                        if (index == partidas.length &&
                            partidas.length > limit) {
                          return const MatchWidget(
                              message: 'Mostrar todo o histórico');
                        }
                        double paddRight = index == partidas.length ? 16 : 4;
                        return Padding(
                          padding: EdgeInsets.only(right: paddRight),
                          child: MatchWidget(partida: partidas[index]),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: BestScoreWeaponWidget(
                      scoreWeapons: scoreWeapons,
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: BestScoreMapWidget(
                      scoreMaps: scoreMaps,
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Estilo de Jogo',
                    style: TextStyle(
                        color: AppColors.colorTextPrincipal, fontSize: 12),
                  ),
                  Container(
                    height: 271,
                    width: 382,
                    decoration:
                        const BoxDecoration(color: AppColors.cardsBackground),
                    child: const Image(
                      image: AssetImage('assets/images/radar-chart.png'),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
