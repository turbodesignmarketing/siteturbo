import 'package:flutter/material.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/constans/image_constants.dart';
import 'package:siteturbo/theme/app_colors.dart';

class TeamBlock extends StatelessWidget {
  const TeamBlock({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 800,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              ImageConstans.introPhoto,
              height: 700,
              fit: BoxFit.fitHeight,
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RenderTextAdapter(
                  text: 'Quer saber quem\nestará por trás do\nseu trabalho?',
                  fontFamily: 'Poppins',
                  fontSize: 32,
                  color: AppColors.turboWhite,
                  fontWeight: FontWeight.bold,
                  lineWeight: 0.9,
                ),
                const SizedBox(
                  height: 16,
                ),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(
                      height: 1.1,
                      color: AppColors.turboWhite,
                      fontSize: 18,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'Poppins',
                    ),
                    text: 'Somos uma agência de marketing,\nque foi ',
                    children: [
                      TextSpan(
                        text: 'fundada pela Larissa e pela\nJéssica',
                        style: TextStyle(
                          color: AppColors.turbogreen,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      TextSpan(
                        text:
                            ', duas designers apaixonadas\npelo sucesso do cliente!',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                RenderTextAdapter(
                  text:
                      'Cansadas de ver meias entregas\ndecidimos criar uma empresa\ndiferente! Uma empresa que está do\nseu lado, que entende a sua dor\nde verdade e abraça a sua empresa\ncomo se fosse nossa.',
                  fontFamily: 'Poppins',
                  fontSize: 18,
                  color: AppColors.turboWhite,
                  fontWeight: FontWeight.normal,
                  lineWeight: 1.1,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
