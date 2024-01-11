import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/features/home/presentation/controller/home_controller.dart';
import 'package:siteturbo/features/home/presentation/widgets/service_type_tab_bar.dart';
import 'package:siteturbo/theme/app_colors.dart';

class ServiceTypeBlock extends StatelessWidget {
  ServiceTypeBlock({super.key});

  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return SizedBox(
          height: 730,
          child: Column(
            children: [
              const ServiceTypeTabBar(),
              const SizedBox(
                height: 26,
              ),
              Stack(
                alignment: Alignment.bottomCenter,
                clipBehavior: Clip.none,
                children: [
                  Container(
                    width: 996,
                    height: 630,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(72),
                      color: AppColors.turboWhite,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(48),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Container(
                                width: 400,
                                height: 400,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  color: const Color(0xFFD9D9D9),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RenderTextAdapter(
                                    text:
                                        'Trabalhamos com\nprocessos muito\nbem definidos!',
                                    fontFamily: 'Poppins',
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.turboBlack,
                                    lineWeight: 1.1,
                                  ),
                                  const SizedBox(
                                    height: 24,
                                  ),
                                  RenderTextAdapter(
                                    text:
                                        '• estudo de nicho\n• criação de páginas\n• planejamento e estratégia\n• conteúdos\n• legendas\n• criativos\n• agendamento\n• análise de métricas mensal\n',
                                    fontSize: 14,
                                    fontWeight: FontWeight.normal,
                                    color: AppColors.turboBlack,
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 55,
                          ),
                          RenderTextAdapter(
                            text:
                                'Foco no conteúdo e design limpo,\nimpactando o público alvo de verdade.',
                            fontFamily: 'Poppins',
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: AppColors.turboBlack,
                            textAlign: TextAlign.center,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: -43,
                    child: Container(
                      width: 399,
                      height: 66,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: AppColors.turbogreen,
                      ),
                      child: const Center(
                        child: Text(
                          'QUERO CONHECER OS PLANOS!',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: AppColors.turboBlack,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
