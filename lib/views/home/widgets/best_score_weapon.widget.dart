import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:cszeidre_app/src/modelview/score_weapon.viewmodel.dart';
import 'package:cszeidre_app/views/home/widgets/best_stats_weapon.widget.dart';
import 'package:flutter/material.dart';

class BestScoreWeaponWidget extends StatelessWidget {
  final List<ScoreWeaponViewModel>? scoreWeapons;
  const BestScoreWeaponWidget({Key? key, this.scoreWeapons}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Melhores Armas',
          style: TextStyle(color: AppColors.colorTextPrincipal, fontSize: 12),
        ),
        Container(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          decoration: const BoxDecoration(color: AppColors.cardsBackground),
          height: 260,
          width: 330,
          child: ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 5,
            itemBuilder: (context, index) {
              if (index >= scoreWeapons!.length) return Container();
              return BestStatsWeaponWidget(
                scoreWeapon: scoreWeapons![index],
                place: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
