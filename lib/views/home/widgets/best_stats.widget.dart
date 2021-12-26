import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:flutter/material.dart';

class BestStatsWidget extends StatelessWidget {
  const BestStatsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List places = [
      'assets/icons/patentes/icons8_medal_first_place_48px.png',
      'assets/icons/patentes/icons8_medal_second_place_48px.png',
      'assets/icons/patentes/icons8_medal_third_place_48px.png'
    ];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        // Padding(
        //   padding: const EdgeInsets.all(8.0),
        //   child: Text(
        //     '4',
        //     style: TextStyle(fontSize: 12, color: Colors.white),
        //   ),
        // ),
        Image(
            image: AssetImage(
                'assets/icons/patentes/icons8_medal_first_place_48px.png')),
        Image(image: AssetImage('assets/icons/weapons/ak47_light.png')),
        Expanded(
          flex: 1,
          child: Column(
            children: [
              RichText(
                text: const TextSpan(
                  text: 'USP-S',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Quantico',
                  ),
                  children: [
                    TextSpan(
                      text: ' * 69% Headshot',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryColor,
                        fontFamily: 'Quantico',
                      ),
                    ),
                  ],
                ),
              ),
              const Text(
                '197 Abates * 25% Precisão',
                style: TextStyle(
                  fontSize: 12,
                  color: AppColors.colorTextPrincipal,
                  fontFamily: 'Quantico',
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
