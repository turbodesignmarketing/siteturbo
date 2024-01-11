import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:siteturbo/features/home/presentation/controller/home_controller.dart';
import 'package:siteturbo/theme/app_colors.dart';

class InfoBlock extends StatelessWidget {
  InfoBlock({super.key});

  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 720,
      child: Row(
        children: [
          RichText(
            text: const TextSpan(
              style: TextStyle(
                fontSize: 4,
                fontWeight: FontWeight.normal,
                color: AppColors.turboWhite,
                fontFamily: 'Poppins',
              ),
              text: 'Qualidade e profissionalismo de uma ',
              children: [
                TextSpan(
                  text: 'agência',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: ',\nmas atendimento pessoal e otimizado de um ',
                ),
                TextSpan(
                  text: 'freelancer',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                TextSpan(
                  text: '.',
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
        ],
      )
    );
  }
}
