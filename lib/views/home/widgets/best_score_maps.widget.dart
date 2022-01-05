import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:cszeidre_app/src/modelview/score_map.viewmodel.dart';
import 'package:cszeidre_app/views/home/widgets/best_stats_map.widget.dart';
import 'package:flutter/material.dart';

class BestScoreMapWidget extends StatelessWidget {
  final List<ScoreMapViewModel>? scoreMaps;
  const BestScoreMapWidget({Key? key, this.scoreMaps}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Melhores Mapas',
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
              if (index >= scoreMaps!.length) return Container();
              return BestStatsMapWidget(
                scoreMap: scoreMaps![index],
                place: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
