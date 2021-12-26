import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(5),
              child: Image.asset('assets/images/avatar.jpg'),
            ),
          ),
          const Text(
            'Matugas',
            style: TextStyle(
              color: Colors.white,
              fontSize: 24,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Container(
              height: 72,
              color: AppColors.cardsBackground,
              // color: Colors.amber,
              child: Row(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 16, bottom: 16, left: 16),
                    child: Image(
                      image: AssetImage(
                          'assets/icons/patentes/patente-aguia_2.png'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 16, left: 8, bottom: 16, right: 16),
                    child: Column(
                      children: [
                        RichText(
                          text: const TextSpan(
                            style:
                                TextStyle(fontSize: 14, fontFamily: 'Quantico'),
                            text: 'Águia Lendária Mestre',
                            children: [
                              TextSpan(
                                text: ' * Águia 2',
                                style: TextStyle(
                                    color: AppColors.primaryColor,
                                    fontFamily: 'Quantico'),
                              ),
                            ],
                          ),
                        ),
                        const Text(
                          '584 Vitórias 613 Derrotas * 46%',
                          style: TextStyle(color: AppColors.colorTextPrincipal),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
