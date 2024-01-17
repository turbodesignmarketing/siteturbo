import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/adapters/resolutions.dart';
import 'package:siteturbo/features/home/presentation/controller/home_controller.dart';
import 'package:siteturbo/features/home/presentation/widgets/service_type_tab_bar.dart';
import 'package:siteturbo/theme/app_colors.dart';

class ServiceTypeBlock extends StatelessWidget {
  ServiceTypeBlock({super.key});

  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    final resolution = Resolutions.getResolution(context: context);
    return Observer(
      builder: (_) {
        return SizedBox(
          height: 730,
          child: Column(
            children: [
              const SizedBox(
                width: 806,
                child: ServiceTypeTabBar(),
              ),
              const SizedBox(
                height: 26,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal:
                        resolution == CurrentResolution.isCellPhone ? 24 : 80),
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  clipBehavior: Clip.none,
                  children: [
                    _buildBoard(
                      title: controller.selectedServiceType.title,
                      subtitle: controller.selectedServiceType.subtitle,
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
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Widget _buildBoard({required String title, required List<String> subtitle}) {
    return Container(
      width: 996,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(72),
        color: AppColors.turboWhite,
      ),
      child: Padding(
        padding: const EdgeInsets.all(48),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 400,
                  height: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: const Color(0xFFD9D9D9),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: SizedBox(
                      width: 310,
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RenderTextAdapter(
                              text: title,
                              fontFamily: 'Poppins',
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: AppColors.turboBlack,
                              lineWeight: 1.1,
                            ),
                            const SizedBox(
                              height: 24,
                            ),
                            ...subtitle.map((e) {
                              return RenderTextAdapter(
                                text: '• $e',
                                fontSize: 14,
                                fontWeight: FontWeight.normal,
                                color: AppColors.turboBlack,
                              );
                            }).toList(),
                          ],
                        ),
                      ),
                    ),
                  ),
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
    );
  }
}
