import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:siteturbo/adapters/render_text_adapter.dart';
import 'package:siteturbo/features/home/presentation/controller/home_controller.dart';
import 'package:siteturbo/features/home/presentation/widgets/metrics_widget.dart';
import 'package:siteturbo/features/home/presentation/widgets/overview_widget.dart';
import 'package:siteturbo/theme/app_colors.dart';

class MetricsBlock extends StatefulWidget {
  const MetricsBlock({super.key});

  @override
  State<MetricsBlock> createState() => _MetricsBlockState();
}

class _MetricsBlockState extends State<MetricsBlock> {
  final controller = Modular.get<HomeController>();

  @override
  Widget build(BuildContext context) {
    return Observer(
      builder: (_) {
        return SizedBox(
          height: 720,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                RenderTextAdapter(
                  text: 'métricas',
                  fontSize: 128,
                  fontWeight: FontWeight.bold,
                  color: AppColors.turbogreen,
                  fontFamily: 'Poppins',
                ),
                const SizedBox(
                  height: 74,
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    const OverviewWidget(),
                    const SizedBox(
                      width: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 100),
                      child: SizedBox(
                        width: 145,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  color: AppColors.turboWhite,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Poppins',
                                ),
                                text: 'Métricas de ',
                                children: [
                                  TextSpan(
                                    text: 'crescimento',
                                    style: TextStyle(
                                      color: AppColors.turbogreen,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  TextSpan(
                                    text: ' com a Turbo.',
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            RichText(
                              text: const TextSpan(
                                style: TextStyle(
                                  color: AppColors.turboWhite,
                                  fontSize: 18,
                                  fontWeight: FontWeight.normal,
                                  fontFamily: 'Poppins',
                                ),
                                text: 'Nosso foco é no ',
                                children: [
                                  TextSpan(
                                    text: 'engajamento',
                                    style: TextStyle(
                                      color: AppColors.turbogreen,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        MetricsWidget(
                          playCount: 2300748,
                          heartCount: 71935,
                          commentCount: 541,
                          sendCount: 96488,
                          saveCount: 3729,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        MetricsWidget(
                          playCount: 12496,
                          heartCount: 338,
                          commentCount: 6,
                          sendCount: 365,
                          saveCount: 18,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        MetricsWidget(
                          playCount: 1605,
                          heartCount: 147,
                          commentCount: 22,
                          sendCount: 19,
                          saveCount: 41,
                        ),
                        SizedBox(
                          height: 25,
                        ),
                        MetricsWidget(
                          playCount: 3072,
                          heartCount: 84,
                          commentCount: 10,
                          sendCount: 14,
                          saveCount: 1,
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
