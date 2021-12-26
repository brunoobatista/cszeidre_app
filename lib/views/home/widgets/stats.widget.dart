import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StatsWidget extends StatelessWidget {
  const StatsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.only(top: 4),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Estatísticas',
                style: TextStyle(
                  color: AppColors.colorTextInputsHints,
                  fontSize: 12,
                ),
              ),
            ),
          ),
          Container(
            height: 198,
            // decoration: const BoxDecoration(color: Colors.amber),
            decoration: const BoxDecoration(color: AppColors.cardsBackground),
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'K/D',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.colorTextPrincipal),
                                ),
                                Text(
                                  '1.12',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  '% HS',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.colorTextPrincipal),
                                ),
                                Text(
                                  '8 %',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  'Precisão',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.colorTextPrincipal),
                                ),
                                Text(
                                  '18 %',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const Text(
                        '% Acertos',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8, bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'Peito',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.colorTextPrincipal),
                                ),
                                Text(
                                  '39 %',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  'Estomago',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.colorTextPrincipal),
                                ),
                                Text(
                                  '32 %',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              children: const [
                                Text(
                                  'Braços',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.colorTextPrincipal),
                                ),
                                Text(
                                  '10 %',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                            Column(
                              children: const [
                                Text(
                                  'Pernas',
                                  style: TextStyle(
                                      fontSize: 12,
                                      color: AppColors.colorTextPrincipal),
                                ),
                                Text(
                                  '11 %',
                                  style: TextStyle(
                                      fontSize: 18, color: Colors.white),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: SizedBox(
                      height: 200,
                      width: 100,
                      child: Stack(
                        children: const [
                          Positioned(
                            left: 35,
                            top: 0,
                            child: Image(
                              image: AssetImage('assets/icons/hitbox/head.png'),
                              color: Colors.redAccent,
                            ),
                          ),
                          Positioned(
                            left: 0,
                            top: 27,
                            child: Image(
                                image: AssetImage(
                                    'assets/icons/hitbox/chest-arm.png')),
                          ),
                          Positioned(
                            left: 27,
                            top: 58,
                            child: Image(
                                image: AssetImage(
                                    'assets/icons/hitbox/abdomen.png')),
                          ),
                          Positioned(
                              left: 23,
                              bottom: 2,
                              child: Image(
                                  image: AssetImage(
                                      'assets/icons/hitbox/leg.png'))),
                        ],
                      ),
                    ),
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
