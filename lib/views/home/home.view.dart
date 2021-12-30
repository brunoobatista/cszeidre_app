import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:cszeidre_app/src/modelview/match.viewmodel.dart';
import 'package:cszeidre_app/src/repositories/partidas.repository.dart';
import 'package:cszeidre_app/views/home/widgets/best_score.widget.dart';
import 'package:cszeidre_app/views/home/widgets/best_stats.widget.dart';
import 'package:cszeidre_app/views/home/widgets/match.widget.dart';
import 'package:cszeidre_app/views/home/widgets/profile.widget.dart';
import 'package:cszeidre_app/views/home/widgets/stats.widget.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  HomeView({Key? key}) : super(key: key);

  List<MatchViewModel> partidas = Partidas().partidas;

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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 4),
              child: BestScoreWidget(),
            )
          ],
        ),
      ),
    );
  }
}
