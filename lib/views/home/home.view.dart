import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:cszeidre_app/src/modelview/match.viewmodel.dart';
import 'package:cszeidre_app/views/home/widgets/best_stats.widget.dart';
import 'package:cszeidre_app/views/home/widgets/match.widget.dart';
import 'package:cszeidre_app/views/home/widgets/profile.widget.dart';
import 'package:cszeidre_app/views/home/widgets/stats.widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  final List<MatchViewModel> partidas = [
    MatchViewModel(
        mapName: 'dust2',
        scoreTeam: 16,
        scoreEnemy: 8,
        kill: 25,
        death: 12,
        assist: 4,
        kda: 2.04,
        finished_at: DateTime.parse('2021-12-25 13:27:00')),
    MatchViewModel(
        mapName: 'inferno',
        scoreTeam: 12,
        scoreEnemy: 16,
        kill: 13,
        death: 18,
        assist: 1,
        kda: 0.72,
        finished_at: DateTime.parse('2021-12-24 13:27:00')),
    MatchViewModel(
        mapName: 'overpass',
        scoreTeam: 16,
        scoreEnemy: 4,
        kill: 17,
        death: 16,
        assist: 6,
        kda: 1.06,
        finished_at: DateTime.parse('2021-12-21 13:27:00')),
    MatchViewModel(
        mapName: 'dust2',
        scoreTeam: 16,
        scoreEnemy: 14,
        kill: 23,
        death: 27,
        assist: 4,
        kda: 0.85,
        finished_at: DateTime.parse('2021-12-18 13:27:00'))
  ];

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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Melhores Armas',
                    style: TextStyle(
                        color: AppColors.colorTextPrincipal, fontSize: 12),
                  ),
                  // ListView(
                  // shrinkWrap: true,
                  // scrollDirection: Axis.horizontal,
                  // children: [
                  Container(
                    decoration: BoxDecoration(color: Colors.red),
                    height: 260,
                    width: 330,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: BestStatsWidget(),
                        ),
                      ],
                    ),
                  ),
                  //   ],
                  // ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
