import 'package:cszeidre_app/conf/app_colors.dart';
import 'package:cszeidre_app/views/home/widgets/match.widget.dart';
import 'package:flutter/material.dart';

class LastMatchsWidget extends StatelessWidget {
  const LastMatchsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Últimas partidas',
            style: TextStyle(color: AppColors.colorTextPrincipal, fontSize: 12),
          ),
          // MatchWidget(),
        ],
      ),
    );
  }
}
