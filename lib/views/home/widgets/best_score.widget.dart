import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:cszeidre_app/views/home/widgets/best_stats.widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BestScoreWidget extends StatelessWidget {
  const BestScoreWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Melhores Armas',
          style: TextStyle(color: AppColors.colorTextPrincipal, fontSize: 12),
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
    );
  }
}
