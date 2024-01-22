import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/constans/image_constants.dart';
import 'package:siteturbo/features/home/presentation/controller/home_controller.dart';
import 'package:siteturbo/theme/app_colors.dart';

class ConsultingBlock extends StatelessWidget {
  ConsultingBlock({super.key});

  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return Stack(
          alignment: Alignment.topRight,
          children: [
            Positioned(
              top: -80,
              right: -125,
              child: Image.asset(
                ImageConstans.gato1,
                scale: 1.2,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 360,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      RichText(
                        text: const TextSpan(
                          style: TextStyle(
                            fontSize: 40,
                            height: 0.9,
                            fontWeight: FontWeight.bold,
                            color: AppColors.turboWhite,
                            fontFamily: 'Poppins',
                          ),
                          text: 'Você precisa de uma ',
                          children: [
                            TextSpan(
                              text: 'consultoria!',
                              style: TextStyle(
                                color: AppColors.turbogreen,
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.end,
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 32),
                        child: RichText(
                          text: const TextSpan(
                            style: TextStyle(
                              fontSize: 23,
                              height: 1,
                              fontWeight: FontWeight.normal,
                              color: AppColors.turboWhite,
                              fontFamily: 'Poppins',
                            ),
                            text: 'Se você ',
                            children: [
                              TextSpan(
                                text: 'vai abrir sua empresa agora',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: ' ou resolveu ',
                              ),
                              TextSpan(
                                text: 'investir em marketing',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text:
                                    ' e não entendeu muito bem sobre o assunto, nós podemos te ajudar!',
                              ),
                            ],
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () {},
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: Container(
                            height: 66,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              border: Border.all(
                                color: AppColors.turbogreen,
                                width: 2,
                              ),
                            ),
                            child: const Center(
                              child: Text(
                                'QUERO UM ORÇAMENTO',
                                style: TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 22,
                                  color: AppColors.turbogreen,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  width: 88,
                ),
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: AppColors.turbogreen,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14.0,
                      vertical: 31,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        RenderTextAdapter(
                          text: 'pesquisas de mercado',
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.turboBlack,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 38,
                        ),
                        RenderTextAdapter(
                          text:
                              'criação de estratégia de acordo com seus objetivos',
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.turboBlack,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 38,
                        ),
                        RenderTextAdapter(
                          text:
                              'estruturação de conteúdos dentro do funil de vendas',
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.turboBlack,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 38,
                        ),
                        RenderTextAdapter(
                          text:
                              'alinhamento com a identidade visual e tom de voz da marca',
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: AppColors.turboBlack,
                          textAlign: TextAlign.center,
                        ),
                        const SizedBox(
                          height: 38,
                        ),
                        RenderTextAdapter(
                          text: 'planejamento e criação de campanhas',
                          fontFamily: 'Poppins',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.turboBlack,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 40,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 100),
                    child: Transform.rotate(
                      angle: -0.2,
                      child: SizedBox(
                        width: 190,
                        child: RenderTextAdapter(
                          text:
                              'não é só fazer uma artezinha que vai funcionar',
                          fontFamily: 'Rock Salt',
                          fontSize: 16,
                          fontWeight: FontWeight.normal,
                          color: AppColors.turbogreen,
                          textAlign: TextAlign.end,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      },
    );
  }
}
