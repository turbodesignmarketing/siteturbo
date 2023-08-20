import 'package:flutter/material.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/constans/image_constants.dart';
import 'package:siteturbo/features/home/presentation/widgets/custom_app_bar.dart';
import 'package:siteturbo/theme/app_colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.turboBlack,
      appBar: const CustomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 100,
            ),
            Row(
              children: [
                Image.asset(
                  ImageConstans.gato1,
                  width: 324,
                  height: 511,
                ),
                Column(
                  children: [
                    Transform.rotate(
                      angle: -0.15303,
                      child: SizedBox(
                        width: 541,
                        child: RenderTextAdapter(
                          text:
                              'Somos a agência de marketing que você estava procurando.',
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                          color: AppColors.turbogreen,
                          lineWeight: 1,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 65,
                    ),
                    SizedBox(
                      width: 434,
                      child: RenderTextAdapter(
                        text:
                            'Trabalhamos com a\nqualidade e profissionalismo\nde uma agência, mas com\no atendimento pessoal e\notimizado de um freelancer.',
                        fontSize: 26,
                        lineWeight: 1,
                        fontWeight: FontWeight.normal,
                        color: AppColors.turboWhite,
                        textAlign: TextAlign.right,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
