import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:cszeidre_app/conf/app_icons_maps.dart';
import 'package:cszeidre_app/conf/app_icons_weapons.dart';
import 'package:cszeidre_app/src/modelview/score_map.viewmodel.dart';
import 'package:flutter/material.dart';

class BestStatsMapWidget extends StatelessWidget {
  final ScoreMapViewModel scoreMap;
  final int place;
  const BestStatsMapWidget(
      {Key? key, required this.scoreMap, required this.place})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    List places = [
      'assets/icons/patentes/icons8_medal_first_place_48px.png',
      'assets/icons/patentes/icons8_medal_second_place_48px.png',
      'assets/icons/patentes/icons8_medal_third_place_48px.png'
    ];

    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          if (place > 2)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                (place + 1).toString(),
                style: const TextStyle(fontSize: 12, color: Colors.white),
              ),
            )
          else
            Image(
              image: AssetImage(places[place]),
            ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image(
              image: AssetImage(AppIconsMaps.mapas[scoreMap.idMap]['icon32']),
            ),
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                RichText(
                  text: TextSpan(
                    text: scoreMap.nameMap,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Quantico',
                    ),
                    children: [
                      TextSpan(
                        text: ' * ${scoreMap.victoryPercent}% de Vitória',
                        style: const TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: AppColors.primaryColor,
                          fontFamily: 'Quantico',
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '${scoreMap.totalMatchs} vezes jogado',
                  style: const TextStyle(
                    fontSize: 12,
                    color: AppColors.colorTextPrincipal,
                    fontFamily: 'Quantico',
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
