import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:cszeidre_app/conf/app_icons_maps.dart';
import 'package:cszeidre_app/src/modelview/match.viewmodel.dart';
import 'package:flutter/material.dart';

class MatchWidget extends StatelessWidget {
  final MatchViewModel? partida;
  final String? message;
  const MatchWidget({Key? key, this.partida, this.message}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: AppColors.cardsBackground,
      ),
      width: 230,
      height: 64,
      child: partida == null
          ? Center(
              child: Text(
              message!,
              style: const TextStyle(
                fontSize: 18,
                color: AppColors.colorTextPrincipal,
              ),
            ))
          : Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 8, left: 8, bottom: 8, right: 10),
                  child: Image(
                    image: AssetImage(
                        AppIconsMaps.mapas[partida!.mapName]['icon48']),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Quantico',
                            color: partida!.scoreTeam > partida!.scoreEnemy
                                ? Colors.green
                                : Colors.red,
                          ),
                          text: '${partida!.scoreTeam}:${partida!.scoreEnemy}',
                          children: [
                            TextSpan(
                                text: ' - ' +
                                    AppIconsMaps.mapas[partida!.mapName]
                                        ['name'],
                                style: const TextStyle(color: Colors.white))
                          ],
                        ),
                      ),
                      Text(
                        'K/D/A: ${partida!.kill}/${partida!.death}/${partida!.assist}',
                        style: const TextStyle(
                            fontSize: 10, color: AppColors.colorTextPrincipal),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'K/D ${partida!.kda}',
                            style: const TextStyle(
                                fontSize: 10,
                                color: AppColors.colorTextPrincipal),
                          ),
                          // const Text(
                          //   'há 14 minutos',
                          //   style: TextStyle(
                          //       fontSize: 10, color: AppColors.colorTextPrincipal),
                          // ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
    );
  }
}
